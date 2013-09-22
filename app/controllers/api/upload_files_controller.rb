class Api::UploadFilesController < ApplicationController
  include ApiCommon

  skip_before_action :verify_authenticity_token
  before_action :authenticate_user!

  def create
    @upload_file = UploadFile.new(upload_file_params)
    @upload_file.user = current_user

    if @upload_file.save
      render json: result_success
    else
      render json: result_failed
    end
  end

  private

  def upload_file_params
    params.require(:upload_file).permit(:file_name, :owned_file)
  end
end
