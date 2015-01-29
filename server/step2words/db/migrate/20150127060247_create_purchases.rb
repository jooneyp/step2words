class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :type
      t.string :price
      t.string :paytype

      t.timestamps null: false
    end
  end
end
