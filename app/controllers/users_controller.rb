class UsersController < ApplicationController
  def create
    @user = User.new(email: user_params[:email],
                     email_confirmation: user_params[:email_confirmation],
                     name: user_params[:name],
                     password: user_params[:password],
                     password_confirmation: user_params[:password_confirmation])
                     binding.pry
    if @user.save
      flash[:success] = "Successfully registered"
      redirect_to registration_index_path
    else
      flash[:error] = @user.errors.full_messages.first
      redirect_to registration_index_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :email_confirmation, :password, :password_confirmation)
  end
end
