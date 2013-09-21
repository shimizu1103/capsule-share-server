class CreateUploadFiles < ActiveRecord::Migration
  def change
    create_table :upload_files do |t|
      t.integer :user_id
      t.string :file_name
      t.string :owned_file

      t.timestamps
    end
  end
end
