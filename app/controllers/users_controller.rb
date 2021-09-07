class UsersController < ApplicationController

  def show
    @jeans = Jeans.new
    @user_jeans = ""
    @user = current_user.jeans.each do |j|
      @user_jeans = j.jeans_image
    end
  end

end
