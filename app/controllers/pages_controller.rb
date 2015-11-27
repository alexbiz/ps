class PagesController < ApplicationController
  def home
    @title = "PS Home"
    if params[:lat] && params[:lng]
      @venues = foursquare.search_venues(:ll => "#{params[:lat]},#{params[:lng]}", :query => "Coffee").first[1]
      @markers = Array.new
      @venues.each do |v|
        venue = Hash.new
        venue["lat"] = v.location.lat
        venue["lng"] = v.location.lng
        venue["infowindow"] = "Hello!"
        @markers << venue
      end
      @lat = params[:lat]
      @lng = params[:lng]
    else
      @venues = Hash.new
      @markers = Array.new
      @lat = 0
      @lng = 0
    end
    
  end
end
