class PostsController < ApplicationController

  def index
    @posts = Post.all 
    render :index
  end
  
  def show
    @post = Post.find_by_id(params[:id])
    render :show
  end
  
  def new
    @post = Post.new
    render :new
  end
  
  def create
    @post = Post.create(post_params)
    
    if @post.valid?
      redirect_to post_path(@post)
    else
      render :new
    end
  end
  
  private 
  
  def post_params
    params.require(:post).permit(:title,:body)
  end

 
end
