class AudiosController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.where(category: 'Audio')
  end
end
