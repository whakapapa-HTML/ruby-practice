class AwardMap < ApplicationRecord

  belongs_to :jeans, optional: true
  belongs_to :award, optional: true

end
