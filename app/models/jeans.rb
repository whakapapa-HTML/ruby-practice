class Jeans < ApplicationRecord

  belongs_to :lot, optional: true
  belongs_to :brand, optional: true
  belongs_to :year, optional: true
  belongs_to :user
  has_many :posts
  has_many :nominees, through: :nominee_maps
  has_many :nominee_maps, dependent: :destroy, foreign_key: 'jeans_id'

  mount_uploader :jeans_image, JeansUploader
end
