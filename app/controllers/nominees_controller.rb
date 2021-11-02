class NomineesController < ApplicationController

  def this_week
    nominees = NomineeMap.group(:id)
    @jeans = nominees.group(:jeans_id).order('count(nominee_id) desc').limit(5)
  end

  def last_weeks_winner

  end

end
