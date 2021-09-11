class UsersController < ApplicationController

  def show
    @new_jeans = Jeans.new
    @jeans = current_user.jeans
    @user_jeans = Jeans.new
    
  end

end
