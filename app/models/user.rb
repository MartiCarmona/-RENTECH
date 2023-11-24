class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products

  has_many :rentals
  has_many :rented_products, through: :rentals, source: :product

  has_many :favorites
  has_many :favorite_products, through: :favorites, source: :product

  def toggle_favorite(product)
    if favorite_products.include?(product)
      favorite_products.delete(product)
    else
      favorite_products << product
    end
  end
end
