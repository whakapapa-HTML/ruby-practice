class Award < ApplicationRecord

  has_many :award_maps, dependent: :destroy, foreign_key: 'award_id'
  has_many :jeans, through: :award_maps

  enum name: { "Best Faded Award": 0, "Best Fashionable": 1, "Best Whisker": 2, "Best Shevron": 3, "Best 501": 4}

end
