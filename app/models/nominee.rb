class Nominee < ApplicationRecord
  has_many :posts, through: :nominee_maps
  has_many :nominee_maps, dependent: :destroy, foreign_key: 'nominee_id'

  enum name: { faded: 0, fashionable: 1, whisker: 2, shevron: 3, "501": 4}  # whisker ポケット下からモモの上まで , shevron モモから下の部分
end
