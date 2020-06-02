class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]


  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    # @post.images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      # @item.images.new
      render :new
    end
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  private
  def post_params
    params.require(:post).permit(:name, :content, :image)
  end
  
end
