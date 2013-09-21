json.array!(@upload_files) do |upload_file|
  json.extract! upload_file, :user_id, :file_name, :owned_file
  json.url upload_file_url(upload_file, format: :json)
end
