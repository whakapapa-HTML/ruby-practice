class UsersController < ApplicationController

  def show
    @new_jeans = Jeans.new
    @jeans = current_user.jeans
  end

end
