class GadgetsController < ApplicationController
  def index
    @products = Product.where(category: 'Gadgets')
  end
end
