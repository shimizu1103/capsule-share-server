class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|
      t.integer :user_id, :null => false
      t.integer :friend_user_id, :null => false

      t.timestamps
    end

    add_index :user_users, [:user_id, :friend_user_id], :unique => true
  end
end
