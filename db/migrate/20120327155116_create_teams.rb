class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo_url
      t.string :arena
      t.string :conference
      t.string :division
      
      t.timestamps
    end
  end
end
