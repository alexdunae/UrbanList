class ImagesController < ApplicationController
	before_action :lookup_description

  def show
  end

  def create
  	@image = @desc.images.new(image_params)


	    if @image.save
	      redirect_to cities_path, notice: 'Created!'
	    else
	      render 'new'
	    end
  end

  def new
  	@image = @desc.images.new
  end

  private

  def image_params
    params.require(:image).permit(:image_url, :description_id)
  end  

  def lookup_description
    @desc = Description.find(params[:description_id])
  end
end
