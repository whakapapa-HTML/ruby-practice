class NomineesController < ApplicationController

  def this_week
    nominees = NomineeMap.group(:nominee_id).limit(5)
    @jeans = nominees.group(:jeans_id).order('count(nominee_id) desc')
  end

  def last_weeks_winner
    nominees = NomineeMap.group(:nominee_id).limit(5)
    @jeans = nominees.group(:jeans_id).order('count(nominee_id) desc')
  end

end
