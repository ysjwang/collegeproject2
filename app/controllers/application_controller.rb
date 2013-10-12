class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all

  def lookup_ip_location
		if Rails.env.development?
			return Geocoder.search(request.remote_ip).first
		else
			return request.location
		end
	end
end
