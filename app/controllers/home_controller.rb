class HomeController < ApplicationController
  def index
  end

  def new
  # 페이지 네이트
    @posts = Post.order("created_at DESC").page params[:page]
  
  end

  def create
    @post = Post.new
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to :back
  end
  
  def notice
    @post= Post.find(params[:post_id])
  end
  
  def destroy
    post= Post.find(params[:post_id])
    post.destroy
    
    redirect_to '/home/new'
  end

  def edit
    @post = Post.find(params[:post_id])
  end
  
  def update
    @post = Post.find(params[:post_id])
    @post.title = params[:post_title]
    @post.content = params[:post_content]
    @post.save
    
    redirect_to '/home/new'
  end
end
