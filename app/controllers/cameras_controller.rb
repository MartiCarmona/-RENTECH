class CamerasController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.where(category: 'Cameras')
  end
end
