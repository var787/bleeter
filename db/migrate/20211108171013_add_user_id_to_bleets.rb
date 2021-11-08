class AddUserIdToBleets < ActiveRecord::Migration[6.1]
  def change
    add_column :bleets, :user_id, :integer
  end
end
