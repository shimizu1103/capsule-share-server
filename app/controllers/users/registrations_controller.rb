class Users::RegistrationsController < Devise::RegistrationsController
  before_action :mailer_set_url_options, if: -> { ENV['RAILS_ENV'] == "development" }
  before_filter :configure_permitted_parameters

  private

  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name) } 
    devise_parameter_sanitizer.for(:account_updatel) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :name) } 
  end

end
