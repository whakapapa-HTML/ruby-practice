class NomineeMap < ApplicationRecord
  belongs_to :nominee
  belongs_to :post

  validates :nominee_id, presence: true
  validates :post_id, presence: true
end
