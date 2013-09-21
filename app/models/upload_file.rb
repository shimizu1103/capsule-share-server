class UploadFile < ActiveRecord::Base
  belongs_to :user
  
  mount_uploader :owned_file, OwnedFileUploader
end
