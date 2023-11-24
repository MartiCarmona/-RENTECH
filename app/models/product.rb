class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :image
  has_many :rentals
  has_many :rented_by, through: :rentals, source: :user

  validate :image_format

  def image_format
    return unless image.attached?

    unless image.content_type.in?(%w[image/jpeg image/jpg image/png])
      errors.add(:image, 'must be a JPEG, JPG, or PNG')
    end
  end
end
