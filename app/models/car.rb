class Car < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :name, :brand, :model, :renting_price, :location, :experience, :photo, presence: true
end
