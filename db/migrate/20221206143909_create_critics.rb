class CreateCritics < ActiveRecord::Migration[6.1]
  def change
    create_table :critics do |t|
      t.string :first_name
      t.string :last_name 
      t.integer :age 
      t.string :gender
      t.boolean :celebrity 
    end 
  end
end
