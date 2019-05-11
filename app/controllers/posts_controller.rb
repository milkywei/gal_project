class PostsController < ApplicationController
  def index
    @posts = Post.search(params[:search])
    #@posts = Post.all
  end

  def new
    @post = Post.new
    # @post.save
    # redirect_to action: 'index'
  end

  def create
    @post = Post.new(permit_params)
    if @post.save
      redirect_to action: 'index'
    else
      render 'posts/new'
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  private

  def permit_params
    params.require(:post).permit(:name, :title, :content, :tag, :img, :img_cache, :remove_img) 
  end
end
