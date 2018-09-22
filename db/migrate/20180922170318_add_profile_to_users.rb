class AddProfileToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :profile, foreign_key: true
    add_column :users, :avatar, :string
  end
end
