class JeansController < ApplicationController

  def index
    @jeans = Jeans.new
    @user_jeans = current_user.jeans.order(id: :desc)
  end

  def create
    @jean = Jeans.new(jeans_params)
    @jean.save
  end

  def edit
    @jeans = Jeans.find(params[:id])
  end

  private
    def jeans_params
       params.require(:jeans).permit(:user_id, :brand_id, :lot_id, :year_id, :number_of_laundry, :date_of_purchase, :jeans_image) # 変更後
    end
end
