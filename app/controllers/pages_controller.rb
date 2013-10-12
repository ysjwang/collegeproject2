class PagesController < ApplicationController
  def home

    # Find the city they are in    
    @user_coordinates = get_user_coordinates

    
    # category filter
    @categories = Cbo.category_counts

    if (params[:category].blank?) # No category filter
      puts "No filters selected."
      
      # Nearby CBOs - 30 mile radius
      @nearby_cbos = Cbo.near(@user_coordinates, 30)
      puts "There are #{@nearby_cbos.count} nearby CBOs in total"


      @cbos = @nearby_cbos # Cbo.all

    else # There is a category filter
      puts "Filters enabled."

      category_string = params[:category]
      @nearby_cbos = Cbo.near(@user_coordinates, 30) #Cbo.near(user_coordinates, 30) 

      @tagged_cbos = Cbo.tagged_with(category_string)     

      @cbos = @nearby_cbos.merge(@tagged_cbos)

      puts "There are #{@nearby_cbos.count} nearby CBOs in total, #{@tagged_cbos.count} that match the filter, resulting in #{@cbos.count} final."

      
      # Nearby CBOs - 30 mile radius
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
  



end
