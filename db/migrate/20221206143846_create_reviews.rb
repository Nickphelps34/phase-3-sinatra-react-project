class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :restaurant_id
      t.integer :critic_id 
      t.integer :date_published
    end
  end
end
