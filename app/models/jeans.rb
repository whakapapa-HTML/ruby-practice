class Jeans < ApplicationRecord
  belongs_to :lot
  belongs_to :brand
  belongs_to :user
  has_many :posts
end
