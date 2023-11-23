class GadgetsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    def index
      @products = Product.where(category: 'Gadgets').where.not(user: current_user)
    end
  end
end
