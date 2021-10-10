class NomineesController < ApplicationController

  def index
    nominees = NomineeMap.group(:nominee_id).limit(5)
    @jeans = nominees.group(:jeans_id).order('count(nominee_id) desc')
  end

  def this_week

  end

  def last_weeks_winner
  end
end
