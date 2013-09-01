class CreateUserUsers < ActiveRecord::Migration
  def change
    create_table :user_users do |t|
      t.integer :users_id, :null => false
      t.integer :friend_users_id, :null => false

      t.timestamps
    end
  end
end
