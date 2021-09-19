class PostsController < ApplicationController

  def others
    @posts = Post.all
  end

  def index
    @user_jeans = current_user.jeans
    @posts = current_user.posts
    @tag_list = Tag.all

  end

  def show
    @post = Post.find(params[:id])
    @post_tags = @post.tags
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
