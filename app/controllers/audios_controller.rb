class AudiosController < ApplicationController
  def index
    @products = Product.where(category: 'Audio')
  end
end
