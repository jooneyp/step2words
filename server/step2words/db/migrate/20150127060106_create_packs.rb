class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :title
      t.string :title_local
      t.string :vender
      t.string :desc
      t.string :version
      t.string :price
      t.string :cover_url
      t.string :file_url
      t.string :cat1
      t.string :cat2
      t.string :cat3
      t.string :lang1
      t.string :lang2
      t.string :store
      t.string :israndom
      t.integer :event

      t.timestamps null: false
    end
  end
end
