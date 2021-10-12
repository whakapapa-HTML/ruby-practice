class NomineesController < ApplicationController

  def this_week
    nominees = NomineeMap.group(:nominee_id).limit(5)
    @jeans = nominees.group(:jeans_id).order('count(nominee_id) desc')
    if @jeans.present?
      faded_award =  @jeans.where(nominee_id: 1)
      most_obtained =  faded_award.first
      # most_obtained.create_award(most_obtained.jeans_id, most_obtained.nominee_id)
    else
      p "ここまでOK"
    end
  end

  def last_weeks_winner

  end

end
