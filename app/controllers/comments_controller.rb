class CommentsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    comment = current_user.comments.create(comment_params)
    flash[:notice] = 'Successfully commented!'
    redirect_to comment.post
  end

  def edit
    @comment = Comment.find(params[:id])
    if Time.now > (@comment.created_at + 10.minutes)
      flash[:notice] = 'Error: You do not have permissions to edit this comment 10 mins after creation'
      redirect_to @comment.post
    end
  end

  def update
    comment = Comment.find(params[:id])
    if comment.update(comment_params)
      redirect_to comment.post
    else
      render 'edit'
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    flash[:notice] = 'Comment deleted!'
    redirect_to comment.post
  end

  private

  def comment_params
    post_id_hash = params.permit(:post_id)
    body_hash = params.require(:comment).permit(:body)
    post_id_hash.merge(body_hash)
  end

end
