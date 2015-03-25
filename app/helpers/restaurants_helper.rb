module RestaurantsHelper

	def jsondata(rest_data)
		@new_data = []
	    rest_data.each do |r|
	      h={}
	      h["restaurant_name"] = r.restaurant_name
	      h["review_count"] = r.review_count
	      h["address"] = {"latitude" => r.latitude, "longitude" => r.longitude, "city" => r.city, "state" => r.state, "zip_code" => r.zipcode}
	      h["rating"] = r.avg_rating
	      @new_data << h
	    end

	    return @new_data
	end
end
