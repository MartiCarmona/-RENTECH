class CamerasController < ApplicationController
  def index
    @products = Product.where(category: 'Cameras')
  end
end
