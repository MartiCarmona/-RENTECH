class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all # Adjust the limit as needed
  end
end
