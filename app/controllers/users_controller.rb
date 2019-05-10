class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  	@users = User.all.order(id: :desc)
  end

  def show
  	@user = User.find(params[:id])
  end

  def profile
  	 @user = current_user
  end

  def profile_setting
  	@user = current_user
  end 

  def update
  end

end
