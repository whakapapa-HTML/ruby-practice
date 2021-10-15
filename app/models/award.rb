class Award < ApplicationRecord

  has_many :award_maps, dependent: :destroy, foreign_key: 'award_id'
  has_many :jeans, through: :award_maps

  enum name: { "Best Faded Award": 1, "Best Fashionable": 2, "Best Whisker": 3, "Best Shevron": 4, "Best 501": 5 }

end
