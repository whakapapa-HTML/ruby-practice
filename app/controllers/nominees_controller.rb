class NomineesController < ApplicationController

  def index
    nominees = NomineeMap.group(:nominee_id)
    @jeans = nominees.group(:jeans_id)
  end

  def this_week

  end

  def last_weeks_winner
  end
end
