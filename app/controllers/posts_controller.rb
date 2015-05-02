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
    render :new
  end

 
end
