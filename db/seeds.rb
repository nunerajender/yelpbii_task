# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@restaurants = DataFetch::Main.get_restaurents
@data = @restaurants["businesses"]
@data.each do |data|
	Restaurant.create(restaurant_name: data['name'], review_count: data['review_count'], latitude: data['latitude'], longitude: data['longitude'],  city: data['city'], state: data['state'], zipcode: data['zip'], avg_rating: data['avg_rating'])
end
