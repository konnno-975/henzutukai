class BlogsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find_by(id:params[:id])
  end

  def create
    @blog = Blog.new(blog_parameter)
    if @blog.save
      redirect_to blogs_path
    else
      render 'new'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path
    else
      render 'edit'
    end
  end

  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time, :migraine).merge(user_id: current_user.id)
  end

end
