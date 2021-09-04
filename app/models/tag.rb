class Tag < ApplicationRecord
  has_many :posts, through: :tag_maps
  has_many :tag_maps, dependent: :destroy, foreign_key: 'tag_id'
end
