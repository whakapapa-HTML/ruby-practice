class Nominee < ApplicationRecord
  has_many :jeans, through: :nominee_maps
  has_many :nominee_maps, dependent: :destroy, foreign_key: 'nominee_id'

  enum name: { "Best Faded Award": 0, "Best Fashionable ": 1, "Best Whisker": 2, "Best Shevron": 3, "Best 501": 4}  # whisker ポケット下からモモの上まで , shevron モモから下の部分
end
