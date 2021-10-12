class NomineeMap < ApplicationRecord

  belongs_to :nominee,  optional: true
  belongs_to :jeans,  optional: true

  def create_award(most_nominees_obtained, nominees_name)
    Award.create(jeans_id: most_nominees_obtained, name: nominees_name)
  end

end
