class Api::Users::SessionsController < Devise::SessionsController
  include ApiCommon

  skip_before_action :verify_authenticity_token
  skip_before_action :skip_trackable

  # http://matteomelani.wordpress.com/2011/10/17/authentication-for-mobile-devices/
  def create
    email = params[:email]
    password = params[:password]

    if email.nil? || password.nil?
      render json: result_failed
      return
    end

    @user = User.find_for_database_authentication(email: email.downcase)

    if @user.nil? || !@user.valid_password?(password)
      render json: result_not_exists
      return
    end

    sign_in @user
    @user.reset_authentication_token!

    render json: { result: 0, auth_token: @user.authentication_token }
  end
end
