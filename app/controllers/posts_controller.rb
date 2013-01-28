class PostsController < ApplicationController
  protect_from_forgery
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    if @post.save
      redirect_to(@post, :notice => 'Post was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def index
    @posts = Post.all

      respond_to do |format|
        format.html  # index.html.erb
        format.json  { render :json => @posts }
      end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
  end
  
end
