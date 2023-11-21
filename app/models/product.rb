class Product < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :bookings
  has_many :chats
end
