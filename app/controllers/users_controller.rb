class UsersController < ApplicationController
  def index
    @users = User.all
    @comments = Comment.all
    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = Photo.all
    @comments = Comment.all
    render("users/show.html.erb")
  end
end
