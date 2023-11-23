class AudiosController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @products = Product.where(category: 'Audios').where.not(user: current_user)
  end
end
