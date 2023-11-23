class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @products = @user.products
    @rented_products = @user.rented_products
    render 'profile/profile'
  end
end
