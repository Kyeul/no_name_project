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
    
    redirect_to '/home/new'
  end
  
  def notice
     @posts = Post.all
  end

end
