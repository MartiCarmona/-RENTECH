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
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :description, :price, :condition, :image)
  end
end
