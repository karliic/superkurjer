class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.text :content
      t.integer :position
      t.timestamps
    end
  end
end
