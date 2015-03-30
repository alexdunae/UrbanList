class ListDesctiptionController < ApplicationController
  def show
  	@listsDescription = List.find(params[:id]).descriptions.all.order('name DESC')
  end
end
