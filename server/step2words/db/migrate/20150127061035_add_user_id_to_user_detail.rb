class AddUserIdToUserDetail < ActiveRecord::Migration
  def change
    add_column :user_details, :user_id, :integer
    add_index :user_details, :user_id
  end
end
