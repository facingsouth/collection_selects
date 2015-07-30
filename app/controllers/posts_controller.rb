class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.comments.build
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post created!"
      redirect_to posts_path
    else
      flash.now[:error] = "Not albe to create post"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    @post.comments.build
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:success] = "Your post is Updated!"
      redirect_to posts_path
    else
      flash[:error] = "Oops! Something went wrong, try again!"
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:success] = "Deleted!"
      redirect_to posts_path
    else
      flash[:error] = "Indestructible!"
      redirect_to posts_path
    end
  end

  def post_params
    params
      .require(:post)
      .permit(:title, 
              :body, 
              {:tags_on_authored_post_ids => []},
              {:comments_attributes => [
                  :body,
                  :user_id,
                  :id,
                  :_destroy ] } )
  end
end
