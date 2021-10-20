class AwardMap < ApplicationRecord

  belongs_to :jeans
  belongs_to :award, optional: true

  enum award_id: { "Best Faded": 1, "Best Fashionable": 2, "Best Whisker": 3, "Best Shevron": 4, "Best 501": 5 }

end
