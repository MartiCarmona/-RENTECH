class RentalsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @start_date = rental_params[:start_date]
    @end_date = rental_params[:end_date]

  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date)
  end

  def valid_dates?(start_date, end_date)
    start_date.present? && end_date.present? && Date.parse(start_date) < Date.parse(end_date)
  rescue ArgumentError, TypeError
    false
  end
end
