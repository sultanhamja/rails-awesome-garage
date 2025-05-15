class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true, length: { minimum: 6}
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5}
end
