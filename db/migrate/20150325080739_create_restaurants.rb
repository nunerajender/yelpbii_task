class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :review_count
      t.float :latitude
      t.float :longitude
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :avg_rating

      t.timestamps
    end
  end
end
