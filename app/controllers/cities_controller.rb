class CitiesController < ApplicationController

  def index
  	@cities = City.all
  end

  def create
  	@city = City.new(project_params)


	    if @city.save
	      redirect_to cities_path, notice: 'Created!'
	    else
	      render 'new'
	    end
  end

  def new
  	@city = City.new
  end

  private

  def project_params
    params.require(:city).permit(:image_url, :name)
  end  

end
