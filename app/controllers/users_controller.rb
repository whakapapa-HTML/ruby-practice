class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def my_page
  end

  def followings
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
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
