class NomineeMapsController < ApplicationController

  def create
    nominee_content = NomineeMap.new(nominee_map_params)
    nominee_content.save
    redirect_to request.referer || root_path
  end

  def destroy
  end

  private
  def nominee_map_params
     params.require(:nominee_map).permit(:jeans_id, :nominee_id)
  end

end
