class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    following = current_user.relationships.build(follower_id: params[:user_id])
    following.save

  end

  def destroy
    @post = Post.find(params[:post_id])
    following = current_user.relationships.find_by(follower_id: params[:user_id])
    following.destroy
  end
end
