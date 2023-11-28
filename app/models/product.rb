class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :image

  has_many :rented_by, through: :bookings, source: :user
  has_many :favorite_users, through: :favorites, source: :user

  validate :image_format

  has_many :favorites,  dependent: :destroy
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

  def rented_by?(user)
    bookings.exists?(user: user)
  end

  def already_rented?(user)
    bookings.where(user: user).exists?
  end

  def self.search(query)
    where("name ILIKE ? OR category ILIKE ? OR description ILIKE ?", "%#{query}%", "%#{query}%", "%#{query}%")
  end

  def booked_dates_for_user(user)
    bookings.where(user: user).pluck(:start_date, :end_date)
  end

  def valid_dates?(booking)
    bookings.each do |booking|
      if booking.start_date <= booking.start_date && booking.end_date >= booking.start_date
        return false
      elsif booking.start_date <= booking.end_date && booking.end_date >= booking.end_date
        return false
      elsif booking.start_date >= booking.start_date && booking.end_date <= booking.end_date
        return false
      end
    end
    true
  end
end
