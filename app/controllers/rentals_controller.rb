class RentalsController < ApplicationController
  before_action :authenticate_user!

  def create
    @product = Product.find(params[:id])

    if current_user.rented_products.exclude?(@product)
      Rental.create(product: @product, user: current_user)
      flash[:notice] = "Product rented successfully!"
    else
      flash[:alert] = "You already rented this product."
    end

    redirect_to @product
  end
end
