class UsersController < ApplicationController
  def create
    redirect_to registration_index_path
  end
end
