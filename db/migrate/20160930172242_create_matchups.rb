class CreateMatchups < ActiveRecord::Migration
  def change
    create_table :matchups do |t|
      t.string :home
      t.string :away
      t.integer :week
      t.string :outcome

      t.timestamps null: false
    end
  end
end
