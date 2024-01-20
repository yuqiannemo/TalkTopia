class AddUserIdToTribes < ActiveRecord::Migration[7.1]
  def change
    add_column :tribes, :user_id, :integer
    add_index :tribes, :user_id
  end
end
