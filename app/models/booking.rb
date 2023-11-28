
class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true, numericality: { greater_than_or_equal_to: ->(booking) { booking.start_date.to_i } }

  def total_price
    (end_date - start_date) * product.price
  end

  
end
