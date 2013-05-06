class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :username
      t.string :password
      t.integer :number
      t.string :name

      t.timestamps
    end
  end
end
