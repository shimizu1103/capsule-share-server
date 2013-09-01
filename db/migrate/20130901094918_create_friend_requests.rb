class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.integer :users_id, :null => false
      t.integer :friend_users_id, :null => false
      t.column :status, "char(1)", :null => false, :default => 1

      t.timestamps
    end
  end
end
