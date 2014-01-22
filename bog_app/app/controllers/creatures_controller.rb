class CreaturesController < ApplicationController

	def index
		render :index
	end

	def view
		@creatures = Creature.all
		render :view
	end

	def new
		render :new
	end

	def create
		creature = params.require(:creature).permit(:name, :description)
		new_creature = Creature.create(creature)
		redirect_to "/creatures/#{new_creature.id}"
	end

	def show
		id = params[:id]
		@creature = Creature.find(id)
		render :show
	end

	def edit
		id = params[:id]
		@creature = Creature.find(id)
		render :edit
	end

	def update
		id = params[:id]
		creature = Creature.find(id)
		updated_info = params.require(:creature).permit(:name, :description)
		creature.update_attributes(updated_info)
		redirect_to "/creatures/#{creature.id}"
	end

	def delete
		id = params[:id]
		@creature = Creature.find(id)
		render :delete
	end

	def destroy
		id = params[:id]
		Creature.destroy(id)
		redirect_to "/"
	end


end