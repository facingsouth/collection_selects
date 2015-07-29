class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save

    redirect_to new_post_path
  end

  def post_params
    params
      .require(:post)
      .permit(:title, :body, :tags_on_authored_posts => [])
  end
end
