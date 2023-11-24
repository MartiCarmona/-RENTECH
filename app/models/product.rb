class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image
  has_many :rentals

  has_many :rented_by, through: :rentals, source: :user
  has_many :favorite_users, through: :favorites, source: :user

  validate :image_format

  has_many :favorites
  has_many :favorited_by, through: :favorites, source: :user

  def favorited_by?(user)
    favorited_by.include?(user)
  end

  def image_format
    return unless image.attached?

    unless image.content_type.in?(%w[image/jpeg image/jpg image/png])
      errors.add(:image, 'must be a JPEG, JPG, or PNG')
    end
  end

  def self.search(query)
    where("name ILIKE ? OR category ILIKE ? OR description ILIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end
end
