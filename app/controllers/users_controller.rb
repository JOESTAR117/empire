class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to static_index_path, notice: 'User was successfully created' }
      else
        render :new
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :location)
  end
end
