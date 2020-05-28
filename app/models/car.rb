class Car < ApplicationRecord
  belongs_to :user
  has_many :rentals
  has_one_attached :photo
  validates :name, :brand, :model, :renting_price, :location, :experience, :description, presence: true
end
