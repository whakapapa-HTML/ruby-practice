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
    @post_tags = @post.tags
    @comment = Comment.new
    @comments = Comment.where(post_id: @post.id)
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
