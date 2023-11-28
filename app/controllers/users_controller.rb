class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @products = @user.products
    @booked_products = @user.booked_products
    render 'profile/profile'
  end
end
