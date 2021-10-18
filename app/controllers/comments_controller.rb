class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build  # 投稿全体へのコメント投稿用の変数
    @comment_reply = @post.comments.build  # コメントに対する返信用の変数
    @comments = Comment.includes(:user).where(post_id: @post.id).order(created_at: :desc)
    comment = current_user.comments.new(comment_params)
    comment.post_id = @post.id
    comment.save
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
