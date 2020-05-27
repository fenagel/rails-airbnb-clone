class Car < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_many_attached :photos
  validates :name, :brand, :model, :renting_price, :location, :experience, :description, :photo, presence: true
end
