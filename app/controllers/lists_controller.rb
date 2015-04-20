class ListsController < ApplicationController
  before_action :lookup_city

  def show
  	@lists = @city.lists.find(params[:id])
  end

  def create
  	@list = @city.lists.new(list_params)


	    if @list.save
	      redirect_to cities_path, notice: 'Created!'
	    else
	      render 'new'
	    end
  end

  def new
  	@list = @city.lists.new
  end

  private

  def list_params
    params.require(:list).permit(:name, :nome, :image_url, :city_id)
  end  

  def lookup_city
    @city = City.find(params[:city_id])
  end


end
