class PostsController < ApplicationController

  def others
    @posts = Post.all
  end

  def index
    @user_jeans = current_user.jeans
    @posts = current_user.posts

  end

  def show
  end
end
