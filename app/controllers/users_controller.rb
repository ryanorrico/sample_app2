class UsersController < ApplicationController
  def new
  	@title = "Sign up"
  	@user = User.new
  end

  def show 
  	@user = User.find(params[:id])
  	@title = @user.name
  end

  def index
  	@title = "All users"
  	@users = User.all
  end


  def create
 		@title = "Yo"
  	@user = User.new(params[:user])
  	if @user.save
      sign_in @user
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end

  end


end
