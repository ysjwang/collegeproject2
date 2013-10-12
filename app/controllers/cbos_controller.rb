class CbosController < ApplicationController
  def index

    @categories = Cbo.category_counts
    
    if (!params[:category] || params[:category] == '')
      @cbos = Cbo.all
    else
      category_string = params[:category]
      @cbos = Cbo.tagged_with(category_string)      
    end
    
    
  end

  def nearby
    @user_location = get_user_location
    @user_coordinates = get_user_coordinates
    nearby_cbos = Cbo.near(@user_coordinates, 30)
    @cbos = nearby_cbos
    puts "#{@cbos.count} within 30 miles of #{@user_location}"
  end

  def show
    @cbo = Cbo.find(params[:id])

    # Find other CBOs tagged with this category
    @related_cbos = @cbo.related_cbos


  end

  def edit
    @cbo = Cbo.find(params[:id])
  end
  
  def update
    @cbo = Cbo.find(params[:id])
    
    if @cbo.update_attributes(params[:cbo])
      redirect_to @cbo, :flash => {:success => "CBO updated." }
    else
      render 'edit'
    end
  end


  

end
