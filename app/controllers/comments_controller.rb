class CommentsController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    comment = current_user.comments.new(comment_params)
    comment.post_id = post.id
    comment.save
    redirect_to request.referer || root_path
  end

  def destroy
    Comment.find_by(id: params[:id]).destroy
    redirect_to request.referer || root_path
  end

  private

    def comment_params
      params.permit(:content, :post_id, :user_id, :parent_id)
    end

end
