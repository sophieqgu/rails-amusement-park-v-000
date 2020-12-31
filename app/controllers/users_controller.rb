class UsersController < ApplicationController
  skip_before_action :verify_user, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end


  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :password,
      :height,
      :nausea,
      :happiness,
      :tickets,
      :admin)
  end

end
