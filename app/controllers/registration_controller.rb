class RegistrationController < ApplicationController
  def index
    @user = User.new
  end
end
