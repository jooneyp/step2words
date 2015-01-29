class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :highscore
      t.string :progress

      t.timestamps null: false
    end
  end
end
