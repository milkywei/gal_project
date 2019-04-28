class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new(permit_params)
    @post.save
    redirect_to action: 'index'
  end

  def create
    Post.create(permit_params)
  end

  private

  def permit_params
    params.require(:post).permit(:name, :title, :content, :img, :img_cache, :remove_img)
  end
end
