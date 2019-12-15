class CountriesController < ApplicationController
before_action :find_country, only: [:show, :destroy]
	#Method for show all countries
	def index
				@countries = Country.all.order("created_at DESC")
	end

	#Method for new country
	def new
				@country = Country.new
	end

	#Method for create a new country
	def create
			@country = Country.new(country_params)

			#if the country has been saved successfully redirects to index of countries
			if @country.save
				redirect_to @country
			else
				render 'new'
			end
	end

	def show

	end

	def destroy
		@country.destroy
		#After deleting post redirect the user to countries index
		redirect_to @country

	end

	private
	#Defining strong parameteres for countries
	def country_params
		params.require(:country).permit(:name, :description, :link)
	end
end
