class Api::UsersController < ApplicationController
  include ApiCommon
    skip_before_filter :verify_authenticity_token

    binding.pry

  def sign_in
    email = params[:email]
    pass = params[:password]

    if email.nil? || password.nil?
      render json: failed("invailed parameters")
      return
    end

    @user = User.find_for_database_authentication(email: email.downcase)

    if @user.nil? || !@user.valid_password?(password)
      render json: failed("unauthorized")
      return
    end 

    @user.reset_authentication_token!

    render json: { result: 0, auth_token: @user.authentication_token }

  end
end
