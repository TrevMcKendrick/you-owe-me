class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :description
      t.binary :accepted
      t.binary :successful

      t.timestamps
    end
  end
end
