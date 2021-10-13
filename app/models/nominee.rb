class Nominee < ApplicationRecord

  has_many :nominee_maps, dependent: :destroy, foreign_key: 'nominee_id'
  has_many :jeans, through: :nominee_maps

  enum name: { "Best Faded Award": 1, "Best Fashionable": 2, "Best Whisker": 3, "Best Shevron": 4, "Best 501": 5}  # whisker ポケット下からモモの上まで , shevron モモから下の部分
end
