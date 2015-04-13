class DescriptionsController < ApplicationController
	before_action :lookup_list

  def show
  	@description = @list.descriptions.find(params[:id])
    @first = 0
    @firstImage = ''
  end

  def create
  	@description = @list.descriptions.new(description_params)


	    if @description.save
	      redirect_to city_list_path(@list.city, @list), notice: 'Created!'
	    else
	      render 'new'
	    end
  end

  def new
  	@description = @list.descriptions.new
  end

  private

  def description_params
    params.require(:description).permit(:name, :detail, :address, :subtitle, :rating, :list_id)
  end  

  def lookup_list
    @list = List.find(params[:list_id])
  end
end
