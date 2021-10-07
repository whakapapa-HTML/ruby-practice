class NomineeMap < ApplicationRecord

  belongs_to :nominee
  belongs_to :jeans

  validates :nominee_id, presence: true
  validates :jeans_id, presence: true
end
