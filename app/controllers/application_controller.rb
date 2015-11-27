class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  private
    def foursquare
      Foursquare2::Client.new(:client_id => Settings.app_id, :client_secret => Settings.app_secret, :api_version => "20150101")
    end

end
