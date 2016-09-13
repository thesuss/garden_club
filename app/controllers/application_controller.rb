class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    binding.pry
    if params[:user][:email] == params[:user][:email_confirmation]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email_confirmation])
    else
      flash[:error] = "Email confirmation doesn't match"
      redirect_to new_user_registration_path
    end
  end
end
