class RemoveBooleanFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :boolean, :string
  end
end
