class Adoption < ApplicationRecord
  belongs_to :user
  belongs_to :tree
  has_many :reviews

  # validates :date_start, uniqueness: true
  # validates :date_end, uniqueness: true
end
