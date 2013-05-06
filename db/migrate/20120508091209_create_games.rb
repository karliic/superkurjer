class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :team_id
      t.string :team1
      t.string :team2
      t.timestamps
    end
    add_index("games", "team_id")
  end
end
