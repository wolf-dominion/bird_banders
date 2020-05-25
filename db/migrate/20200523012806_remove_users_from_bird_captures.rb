class RemoveUsersFromBirdCaptures < ActiveRecord::Migration[6.0]
  def change
    remove_column :bird_captures, :user_id, :integer
  end
end
