class NomineeMap < ApplicationRecord

  belongs_to :nominee,  optional: true
  belongs_to :jeans,  optional: true

end
