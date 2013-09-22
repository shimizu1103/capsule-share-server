class UploadFile < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :owned_file, OwnedFileUploader

  before_validation :set_file_name

  private

  # file_nameが指定なしの場合はアップロードされたファイル名とする
  def set_file_name
    if self.file_name.blank? && owned_file.present?
      self.file_name = owned_file.sanitized_file.original_filename
    end
  end
end
