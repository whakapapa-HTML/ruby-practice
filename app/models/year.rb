class Year < ApplicationRecord
  belongs_to :lot, optional: true
end
