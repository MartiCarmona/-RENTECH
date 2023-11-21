class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all.order(created_at: :desc).limit(5) # Adjust the limit as needed
  end
end
