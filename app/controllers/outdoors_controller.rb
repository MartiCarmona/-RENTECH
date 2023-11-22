class OutdoorsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.where(category: 'Outdoor')
  end
end
