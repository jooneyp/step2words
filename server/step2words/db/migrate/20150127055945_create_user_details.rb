class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.integer :point
      t.integer :cash
      t.string :locale
      t.string :oauth
      t.string :oauthkey
      t.string :sessionid
      t.string :device

      t.timestamps null: false
    end
  end
end
