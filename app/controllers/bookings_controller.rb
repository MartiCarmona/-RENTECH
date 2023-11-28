class BookingsController < ApplicationController
  before_action :authenticate_user!
  def create
    @product = Product.find(params[:product_id])
    @start_date = booking_params[:start_date]
    @end_date = booking_params[:end_date]

    if current_user.booked_products.exclude?(@product)
      Booking.create(product: @product, user: current_user)
      flash[:notice] = "Product rented successfully!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "You already rented this product."
      redirect_to product_path(@product)
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def valid_dates?(start_date, end_date)
    start_date.present? && end_date.present? && Date.parse(start_date) < Date.parse(end_date)
  rescue ArgumentError, TypeError
    false
  end
end
