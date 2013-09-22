class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.integer :user_id, :null => false
      t.integer :friend_user_id, :null => false
      t.column :status, "char(1)", :null => false, :default => 1

      t.timestamps
    end

    add_index :friend_requests, [:user_id, :friend_user_id], :unique => true
  end
end
