class UsersController < ApplicationController
  before_action :set_user

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "更新完了"
      redirect_to user_path(@user)
    else
      flash[:danger] = "更新できませんでした"
      render 'edit'
    end
  end

  
  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:profile_image, :name)
  end
end
