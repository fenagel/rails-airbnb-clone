class Review < ApplicationRecord
  belongs_to :rental
  validates :content, presence: true
end
