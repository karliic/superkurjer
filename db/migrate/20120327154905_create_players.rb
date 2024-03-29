class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :number
      t.string :position
      t.timestamps
    end
    add_index("players", "team_id")
  end
end
