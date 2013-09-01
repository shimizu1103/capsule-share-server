class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.integer :user_id, :null => false
      t.integer :friend_user_id, :null => false
      t.column :status, "char(1)", :null => false, :default => 1

      t.timestamps
    end
  end
end
