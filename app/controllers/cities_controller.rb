class CitiesController < ApplicationController

  def index
  	@cities = City.all
  end

  # this methods (and in the other controllers, too) should use a `before_action`
  # to make sure that the request is coming from a signed in user
  def create
  	@city = City.new(cities_params)


	    if @city.save
	      redirect_to cities_path, notice: 'Created!'
	    else
	      render 'new'
	    end
  end

  def show
    @city = City.find(params[:id])
  end

  def new
  	@city = City.new
  end

  private

  def cities_params
    params.require(:city).permit(:image_url, :name)
  end

end
