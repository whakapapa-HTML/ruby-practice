class JeansController < ApplicationController

  def index
    @jeans = Jeans.new
    @user_jeans = current_user.jeans.order(id: :desc)
    @today = Date.today
  end

  def create
    @jean = Jeans.new(jeans_params)
    @jean.save
    redirect_to request.referer
  end

  def show
    @jeans = Jeans.find(params[:id])
    @today = Date.today
  end

  def update
    @jeans = Jeans.find(params[:id])
    @jeans.update(jeans_params)
    redirect_to request.referer
  end

  private
    def jeans_params
       params.require(:jeans).permit(:user_id, :brand_id, :lot_id, :year_id, :number_of_laundry, :date_of_purchase, :jeans_image) # 変更後
    end
end
