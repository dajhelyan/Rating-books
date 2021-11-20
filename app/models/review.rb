class Review < ApplicationRecord
  belongs_to :book
  belongs_to :review
  validates :title, presence: true
  validates :description, presence: true
  validates :rating, presence: true
end
