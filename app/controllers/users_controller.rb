class UsersController < ApplicationController

  def show
    @jeans = Jeans.new
    @user_jeans = current_user.jeans.order(id: :desc)
  end



end
