class ApplicationController < ActionController::Base
	protect_from_forgery
	helper :all

	def get_user_coordinates


		location = "Boston, MA, USA" # Default

		# Check if dynamic available
		if !request.location.city.blank? && !request.location.state.blank? && !request.location.country.blank?
			location = request.location.city + ', ' + request.location.state + ', ' + request.location.country
		end

		# Force override for dev environment
		if Rails.env.development?
			location = "Stamford, CT, USA"
		end

		user_coordinates = Geocoder.coordinates(location) # || [24.3584308, -71.0597732]
		return user_coordinates
	end


	

end

