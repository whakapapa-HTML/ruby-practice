class UsersController < ApplicationController

  def show
    @jeans = Jeans.new
    @user_jeans = current_user.jeans
  end



end
