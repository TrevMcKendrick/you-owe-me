class UpdateUsersWithDwollaToken < ActiveRecord::Migration
  def change
    add_column :users, :dwolla_token, :string
  end
end
