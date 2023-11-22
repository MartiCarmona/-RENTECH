class ConsolesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.where(category: 'Consoles')
  end
end
