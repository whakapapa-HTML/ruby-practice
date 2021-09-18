class Jeans < ApplicationRecord
  belongs_to :lot, optional: true
  belongs_to :brand, optional: true
  belongs_to :year, optional: true
  belongs_to :user
  has_many :posts

  validates :year, presence: true, if: :year_id?

  mount_uploader :jeans_image, JeansUploader
end
