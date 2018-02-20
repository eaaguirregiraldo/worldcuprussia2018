class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.integer  :team1
      t.integer  :team2
      t.datetime :date_game
      t.integer :gol1
      t.integer :gol2
      
      t.timestamps null: false
    end
  end
end
