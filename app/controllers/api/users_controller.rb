class Api::UsersController < ApplicationController

  def sign_in
    @users = User.find(params[:email])
    render :json => @users
  end

end
