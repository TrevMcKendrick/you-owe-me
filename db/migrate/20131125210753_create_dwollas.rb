class CreateDwollas < ActiveRecord::Migration
  def change
    create_table :dwollas do |t|

      t.timestamps
    end
  end
end
