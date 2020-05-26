class Rental < ApplicationRecord
  belongs_to :car
  belongs_to :user
  has_many :reviews
end
