class Tree < ApplicationRecord
  belongs_to :user
  has_many :adoptions,dependent: :delete_all
  validates :name, presence: true
  validates :address, presence: true
  validates :fruits, presence: true
  validates :description, presence: true
  validates :quantity_by_year, presence: true
  validates :fruits, presence: true
  validates :fruits, inclusion: { in: %w[Apple Apricot Cherry Chestnut Coconut tree Fig Grapefruit Hazel Mandarin Mango Mirabellier Mulberry Olivier Orange Pear Plum]}
  validates :quantity_by_year, numericality: { greater_than_or_equal_to: 0 }
  validates :price_per_year, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { minimum: 20 }
  validates :description, length: { maximum: 280 }
end
