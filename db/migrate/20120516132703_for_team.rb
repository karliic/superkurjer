class ForTeam < ActiveRecord::Migration
  def up
     add_column :teams, :image_file_name, :string
    add_column :teams, :image_content_type, :string
    add_column :teams, :image_file_size, :integer
    
  end

  def down
  end
end
