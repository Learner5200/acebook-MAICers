# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    current_user.posts.create(post_params)
    redirect_to '/'
  end

  def index
    user = User.find(params[:user_id])
    @posts = user.posts.order('updated_at DESC')
  end

  def edit
    @post = Post.find(params[:id])
    if Time.now > (@post.created_at + 10.minutes)
      flash[:notice] = 'Error: You do not have permissions to edit this message 10 mins after creation'
      redirect_to @post
    end
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to '/'
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
