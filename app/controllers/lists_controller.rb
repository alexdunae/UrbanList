class ListsController < ApplicationController
  def show
  	@lists = List.find(params[:id])
  end

  def create
  	@list = List.new(list_params)


	    if @list.save
	      redirect_to cities_path, notice: 'Created!'
	    else
	      render 'new'
	    end
  end

  def new
  	@list = List.new
  end

  private

  def list_params
    params.require(:city).permit(:image_url, :name)
  end  
end
