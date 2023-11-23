class ConsolesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.where(category: 'Consoles').where.not(user: current_user)
  end
end
