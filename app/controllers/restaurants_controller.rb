class RestaurantsController < ApplicationController
  include RestaurantsHelper
  def index
    @restaurants = Restaurant.all
    @restaurants_json = jsondata(@restaurants)
    
    respond_to do |format|
      format.html 
      format.json { render json: @restaurants_json }
      format.xml { render xml: @restaurants_json }
    end
  end
end
