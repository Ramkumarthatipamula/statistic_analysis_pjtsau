class AddUserIdToApplicationFrom < ActiveRecord::Migration[5.2]
  def change
    add_column :application_forms, :user_id, :integer
  end
end
