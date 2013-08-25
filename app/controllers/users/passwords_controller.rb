class Users::PasswordsController < Devise::PasswordsController 
  before_action :mailer_set_url_options, if: -> { ENV['RAILS_ENV'] == "development" }

  private

  def mailer_set_url_options
    ActionMailer::Base.default_url_options[:host] = request.host_with_port
  end
end
