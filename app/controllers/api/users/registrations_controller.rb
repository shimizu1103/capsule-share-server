class Api::Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token
end
