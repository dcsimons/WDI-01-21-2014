class PlanesController < ApplicationController

	def index
		@planes = Plane.all
		render :index
	end

	def new
		render :new
	end

	def create
		plane = params.require(:plane).permit(:name, :engine_type, :description)
		new_plane = Plane.create(plane)
		redirect_to "/planes/#{new_plane.id}"
	end

	def show
		id = params[:id]
		@plane = Plane.find(id)
		render :show
	end

	def edit
		id = params[:id]
		@plane = Plane.find(id)
		render :edit
	end

	def update
		id = params[:id]
		plane = Plane.find(id)
		updated_info = params.require(:plane).permit(:name, :engine_type, :description)
    plane.update_attributes(updated_info)
    redirect_to "/planes/#{plane.id}"
	end

end