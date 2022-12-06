class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name 
      t.integer :michelin_stars 
      t.string :location
      t.string :cuisine 
      t.boolean :health_hazards
    end 
  end
end
