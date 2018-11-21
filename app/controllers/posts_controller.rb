class PostsController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @post = Post.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def create
    @user = User.find(params[:user_id])
    @post = current_user.posts.create(post_params)
    redirect_to "/"
  end

  def index
    @user = User.find(params[:user_id])
    @posts = Post.all
    @posts = Post.order('updated_at DESC')
  end

  def destroy
    @user = User.find(params[:user_id])
    @post = @user.posts.find(params[:id])
    if @user.id == current_user.id
      @post.destroy
      redirect_to "/"
    else
      flash[:notice] = "Error: You do not have permissions to delete this message"
      redirect_to user_post_path(user_id: @user.id, id: @post.id)
    end
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
