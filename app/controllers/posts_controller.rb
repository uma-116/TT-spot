class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]


  def index
    
    @posts = Post.limit(3).order('created_at DESC')
  end

  def new
    @post = Post.new
    @post.images.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      @item.images.new
      render :new
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def show
   @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
  
  def search
    @posts = Post.search(params[:keyword])
  end

  private
  def post_params
    params.require(:post).permit(:name, :content, images_attributes: [:img,:_destroy,:id]).merge(user_id: current_user.id)
  end
  
end
