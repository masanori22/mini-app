class BlogsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @blogs = Blog.all.order("created_at ASC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Blog.create(blog_params)
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    Blog.update(blog_params)
  end

  private
  def blog_params
    params.permit(:name, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?  
  end
end
