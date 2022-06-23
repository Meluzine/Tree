class Review < ApplicationRecord
  belongs_to :adoption
  belongs_to :user
  validates :rating, presence: true
  validates :rating, numericality: { integer: true, less_than_or_equal_to: 0 }
  validates :description, presence: true
  validates :description, length: { minimum: 3 }
  validates :description, length: { maximum: 114 }
end
