class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:others]

  def others
    if user_signed_in?
      @posts = Post.all
      from  = Time.current.at_beginning_of_day
      to    = (from - 6.day).at_end_of_day
      @winners = AwardMap.where(created_at: to...from)
    else
      @posts = Post.all.shuffle
      # 一週間分のレコードを取得
      from  = Time.current.at_beginning_of_day
      to    = (from - 6.day).at_end_of_day
      @winners = AwardMap.where(created_at: to...from)  # ...でfrom 以上 to 未満
    end
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
    post_jeans = Jeans.find_by(id: @post.jeans_id)
    date =  (@post.created_at - post_jeans.date_of_purchase.to_time.to_datetime).to_i
    @difference_date = (date / 1.day)
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

   def timeline
      @posts_all = Post.all
      @user = current_user
      @follow_users = @user.followings  # ユーザーのフォローする他ユーザーの投稿を持ってくる
      @posts = @posts_all.where(user_id: @follow_users).order("created_at DESC")
   end



  private
   def post_params
     params.require(:post).permit(:image, :body, :jeans_id)
   end
end
