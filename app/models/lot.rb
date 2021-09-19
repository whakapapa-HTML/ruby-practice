class Lot < ApplicationRecord
  belongs_to :brand, optional: true
  has_many :years
end
