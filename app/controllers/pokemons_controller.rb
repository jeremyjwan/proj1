class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health > 0
			@pokemon.health -= 10
		end
		@pokemon.save
		# if @pokemon.health <= 0
		# 	@pokemon.destroy
		# end
		redirect_to trainer_path(current_trainer)
	end

	def heal
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health < 100
			@pokemon.health += 10
		end
		@pokemon.save
		redirect_to trainer_path(current_trainer)
	end

	def new
		@pokemon = Pokemon.new()
	end

	def create
		@pokemon = Pokemon.new()
		@pokemon.name = params[:pokemon][:name]
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer = current_trainer
		if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			render :new 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end
end
