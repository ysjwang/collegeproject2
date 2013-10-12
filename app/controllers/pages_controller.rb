class PagesController < ApplicationController
  def home

    # Find the city they are in
    
    @user_coordinates = get_user_location
    puts "Second hello #{@user_coordinates[0]} and #{@user_coordinates[1]}"
    
    # category filter
    @categories = Cbo.category_counts

    if (!params[:category] || params[:category] == '')
      @cbos = Cbo.all
      
      # Nearby CBOs - 30 mile radius
      @nearby_cbos = Cbo.near(@user_coordinates, 30)
    else
      category_string = params[:category]
      @cbos = Cbo.tagged_with(category_string)     
      
      # Nearby CBOs - 30 mile radius
      @nearby_cbos = @cbos.near(@user_coordinates, 30) #Cbo.near(user_coordinates, 30) 
    end
    
    
    
    
    # Nearby Communities - 30 mile radius
    #puts "user coordinates is #{user_coordinates} for #{@user_location}"
    @nearby_communities = Community.near(@user_coordinates, 30)
    puts "Nearby communites are #{@nearby_communities}"
    
    
    
    # Nearby Students - 30 mile radius
    @nearby_students = Student.near(@user_coordinates, 30)
    
    #@cbos = Cbo.all
    
  end
  
  def mission
  end

  private

  # Returns an object with [:lat] and [:lng]
  def get_user_location
    # if (!request.location.city.blank? && !request.location.state.blank? && !request.location.country.blank?)
    #   puts "Case 1"
    #   user_location = request.location.city + ', ' + request.location.state + ', ' + request.location.country
    # else
    #   puts "Case 2"
    #   user_location = 'Boston, MA, USA'
    # end

    ip_location = lookup_ip_location
    user_location = ip_location.city + ', ' + ip_location.state + ', ' + ip_location.country
    puts "New using lookup_ip_location is #{user_location}"
    
    # user_location = "Boston, MA, USA" # Force this, for testing purposes

    # Geocode their location
    user_coordinates = Geocoder.coordinates(user_location) || [24.3584308, -71.0597732] # force this, for testing purposes

    # puts "hello #{user_coordinates[0]} and #{user_coordinates[1]}"


    return user_coordinates


  end



end
