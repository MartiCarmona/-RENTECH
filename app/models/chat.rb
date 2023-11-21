class Chat < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  belongs_to :product
end
