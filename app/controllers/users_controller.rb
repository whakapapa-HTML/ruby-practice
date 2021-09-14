class UsersController < ApplicationController
  
  def show
    
  end

  def update
    user = current_user
    user.update(user_params)
    redirect_to request.referer
  end

  private

    def user_params
      params.require(:user).permit(:name, :introduction, :image)
    end
end
