class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :matchup, index: true, foreign_key: true
      t.text :pick

      t.timestamps null: false
    end
  end
end
