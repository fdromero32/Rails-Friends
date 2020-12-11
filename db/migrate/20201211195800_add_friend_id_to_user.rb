class AddFriendIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :friend_id, :integer
    add_index :users, :friend_id
  end
end
