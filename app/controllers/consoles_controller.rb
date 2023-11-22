class ConsolesController < ApplicationController
  def index
    @products = Product.where(category: 'Consoles')
  end
end
