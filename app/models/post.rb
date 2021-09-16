class Post < ApplicationRecord
  has_many :nominee_maps, dependent: :destroy
  has_many :tag_maps, dependent: :destroy
  has_many :tags, through: :tag_maps
  belongs_to :jean, optional: true
  belongs_to :user
end
