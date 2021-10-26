class TagMap < ApplicationRecord
  belongs_to :tag, optional: true
  belongs_to :post, optional: true

  validates :post_id, presence: true
  validates :tag_id, presence: true
end
