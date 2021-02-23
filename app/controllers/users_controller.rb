class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find_by(id:params[:id])
    @migraine = Blog.where(migraine: "true").count
  end
end
