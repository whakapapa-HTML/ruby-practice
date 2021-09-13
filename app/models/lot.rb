class Lot < ApplicationRecord
  belongs_to :brand
  has_many :years
end
