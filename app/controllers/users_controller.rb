class UsersController < ApplicationController
  def create
    @user = User.new(email: user_params[:email],
                     name: user_params[:name],
                     password: user_params[:password]) # With all the validations beforehand.
    if @user.save
      flash[:success] = "Successfully registered"
      redirect_to registration_index_path
    else
      flash[:error] = "You could not be registered"
      redirect_to registration_index_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :email_confirmation, :password, :password_confirmation)
  end
end
