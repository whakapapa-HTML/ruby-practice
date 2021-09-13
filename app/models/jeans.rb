class Jeans < ApplicationRecord
  belongs_to :lot, optional: true
  belongs_to :brand, optional: true
  belongs_to :user
  has_many :posts

  mount_uploader :jeans_image, JeansUploader
end
