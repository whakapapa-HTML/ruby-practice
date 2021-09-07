class JeansController < ApplicationController

  def index
  end

  def create
    @jean = Jeans.new(jeans_params)
    if @jean.save
      redirect_to my_page_path
    else
      render new
    end
  end

  private
    def jeans_params
       params.require(:jeans).permit(:user_id, :brand_id, :lot_id, :number_of_laundry, :date_of_purchase, :jeans_image) # 変更後
    end
end
