# app/controllers/products_controller.rb

class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.new(product_params)

    if @product.save
      flash[:success] = "Product successfully created!"
      redirect_to root_path
    else
      flash.now[:alert] = "Image format must be JPEG, JPG, or PNG" if @product.errors[:image].include?('must be a JPEG, JPG, or PNG')
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price_per_day, :condition, :image)
  end
end
