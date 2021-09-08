class JeansController < ApplicationController

  def index
  end

  def create
    @jean = Jeans.new(jeans_params)
    if @jean.save
    else
      render "users/show"
    end
  end

  private
    def jeans_params
       params.require(:jeans).permit(:user_id, :brand_id, :lot_id, :number_of_laundry, :date_of_purchase, :jeans_image) # 変更後
    end
end
