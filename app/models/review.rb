class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, comparison: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0}


  validates :content, presence: true
  validates :restaurant_id, presence: true
end
