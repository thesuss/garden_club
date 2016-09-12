class UsersController < ApplicationController
  def create
    flash[:success] = "Successfully registered"
    redirect_to registration_index_path
  end
end
