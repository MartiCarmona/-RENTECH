class Product < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many :bookings
  has_many :chats
  has_one_attached :image

  validate :image_format

  private

  def image_format
    return unless image.attached?

    unless image.content_type.in?(%w[image/jpeg image/jpg image/png])
      errors.add(:image, 'must be a JPEG, JPG, or PNG')
    end
  end
end
