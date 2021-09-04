class Nominee < ApplicationRecord
  has_many :posts, through: :nominee_maps
  has_many :nominee_maps, dependent: :destroy, foreign_key: 'nominee_id'
end
