class ApplicationController < ActionController::Base
	protect_from_forgery
	helper :all


	def get_user_location
		user_location = "Boston, MA, USA" # Default

		if !request.location.city.blank? && !request.location.state.blank? && !request.location.country.blank?
			user_location = request.location.city + ', ' + request.location.state + ', ' + request.location.country
		end

		# Force override for dev environment
		if Rails.env.development?
			user_location = "Boston, MA, USA"
			# user_location = "Norwich, CT, USA"
		end

		return user_location

	end

	def get_user_coordinates


		location = get_user_location
		user_coordinates = Geocoder.coordinates(location) # || [42.3584308, -71.0597732]
		return user_coordinates
	end


	

end

