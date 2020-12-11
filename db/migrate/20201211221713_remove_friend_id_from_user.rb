class RemoveFriendIdFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :friend_id, :integer
  end
end
