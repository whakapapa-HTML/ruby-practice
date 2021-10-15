class NomineeMap < ApplicationRecord

  belongs_to :nominee,  optional: true
  belongs_to :jeans,  optional: true

  enum nominee_id: { "Best Faded Award": 1, "Best Fashionable": 2, "Best Whisker": 3, "Best Shevron": 4, "Best 501": 5 }

end
