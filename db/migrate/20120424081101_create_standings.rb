class CreateStandings < ActiveRecord::Migration
  def change
    create_table :standings do |t|
      t.integer :team_id
      t.integer :place
      t.string :name
      t.string :division
      t.integer :games
      t.integer :wins
      t.integer :lost
      t.integer :ot
      t.integer :points
      t.timestamps
    end
    add_index("standings", "team_id")
  end
end
