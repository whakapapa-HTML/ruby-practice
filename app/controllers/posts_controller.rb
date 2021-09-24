class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:others]

  def others
    @posts = Post.all
  end

  def index
    @user_jeans = current_user.jeans
    @users = User.where.not(id: current_user.id)
    @posts = current_user.posts.order(created_at: :desc)
    @tag_list = Tag.all
  end


  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build  # 投稿全体へのコメント投稿用の変数
    @comment_reply = @post.comments.build  # コメントに対する返信用の変数
    @comments = Comment.includes(:user).where(post_id: @post.id).order(created_at: :desc)
  end

  def create
    @post = current_user.posts.new(post_params)
    tag_list = params[:post][:tag_name].split(nil)
    if @post.save
      @post.save_tag(tag_list)
      redirect_to request.referer
    else
      render request.referer
    end
  end



  private
   def post_params
     params.require(:post).permit(:image, :body, :jeans_id)
   end
end
