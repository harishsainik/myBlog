class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @post_comment = PostComment.new(:post => @post)
  end
  private
  def sanitize
    ActionController::Base.helpers.sanitize(self)
  end
end
