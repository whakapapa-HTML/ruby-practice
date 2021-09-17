class PostsController < ApplicationController

  def new

  end

  def others
    @posts = Post.all
  end

  def index
    @posts = current_user.posts
  end

  def show
  end
end
