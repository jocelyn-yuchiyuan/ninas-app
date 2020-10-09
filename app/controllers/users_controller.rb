class UsersController < ApplicationController
  def new
    @user = User.new
    authorize @user
  end

  def create
    @user = User.new(user_params)
    authorize @user
    if @user.save
      redirect_to pet_path(@pet)
    else
      render :new
    end
  end

  def show
    @pet = User.find(params[:id])
    authorize current_user
  end


  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :photo )
  end
end
