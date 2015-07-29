class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.save

    redirect_to new_comment_path
  end

  def comment_params
    params
      .require(:comment)
      .permit(:body, :user_id)
  end
end
