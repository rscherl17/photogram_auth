class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos


    if current_user !=nil
    render("show")
    else redirect_to("index")
    end
  end
end
