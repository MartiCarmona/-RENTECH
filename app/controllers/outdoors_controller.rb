class OutdoorsController < ApplicationController
  def index
    @products = Product.where(category: 'Outdoor')
  end
end
