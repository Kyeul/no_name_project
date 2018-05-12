class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new
    @comment.post_id = params[:post_id]
    @comment.content = params[:comment]
    @comment.save
    redirect_to :back
  end

  def delete
    comment = Comment.find(params[:comment_id])
    comment.destroy
    redirect_to '/home/new'
  end
end
