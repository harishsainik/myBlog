class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :notice => "Your post have been saved"
    else
      redirect_to new_posts_path, :notice => "Some error occured"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    @categories = Category.all
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path, :notice => "Update Successful"
    else
      redirect_to edit_posts_path, :notice => "Update unsucessful"
    end
  end

  def destroy
   Post.find(params[:id]).destroy
   redirect_to posts_path, :notice => "Post Deleted Sucessfully"
  end

 private
  def post_params
   params.require(:post).permit(:title, :body, :category_id)
  end

end
