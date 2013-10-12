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
