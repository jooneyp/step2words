class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :type
      t.integer :point
      t.integer :cash

      t.timestamps null: false
    end
  end
end
