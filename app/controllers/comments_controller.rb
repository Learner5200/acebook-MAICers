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
