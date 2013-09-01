class Api::UsersController < ApplicationController

  def sign_in
    @users = User.find(params[:id])
    render :json => @users
  end

end
