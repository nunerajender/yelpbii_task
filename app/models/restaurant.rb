class Restaurant < ActiveRecord::Base
  attr_accessible :avg_rating, :city, :latitude, :longitude, :restaurant_name, :review_count, :state, :zipcode
end
