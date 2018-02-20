class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :group
      t.string :flag
      t.integer :points
      t.integer :actual_phase
      t.integer :gf
      t.integer :gc
      t.integer :gd

      t.timestamps null: false
    end
  end
end
