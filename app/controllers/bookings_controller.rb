class BookingsController < ApplicationController
  # Your controller code here
  def create
    @product = Product.find(params[:product_id])

    if current_user.rented_products.exclude?(@product)
      Rental.create(product: @product, user: current_user)
      flash[:notice] = "Product rented successfully!"
      redirect_to user_path(current_user)
    else
      flash[:alert] = "You already rented this product."
      redirect_to product_path(@product)
    end
  end
end
