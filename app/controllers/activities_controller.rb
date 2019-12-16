class ActivitiesController < ApplicationController
before_action :find_activity, only: [:show, :update, :edit, :destroy]
before_action :find_countries, only: [:index, :show, :new, :edit]

#before_action :set_activity, only: [:create]
	#method to show all the activities
	def index
		@activities = Activity.all.order("created_at DESC")
	end

	# method for a new activity
	def new
		@activity = Activity.new
	end

	#method for create a new activity
	def create
		@activity = Activity.new(activity_params)
	respond_to do |format|
			if @activity.save
				format.html { redirect_to root_path, notice: "made activity" }
			else
				format.html { render new }
			end
		end
	end


  #Show method
	def show

	end

  #Delete activity
	def destroy
		@activity.destroy
		#After deleting activity redirect the user to activities index
		redirect_to activities_path

	end

  #Strong parameteres
	private

  #Defining strong parameteres for activities
	def activity_params
		params.require(:activity).permit(:name, :description, :countries_id)
	end

	def find_activity
	 	@activity = Activity.find(params[:id])
	end

	def find_countries
        @countries = Country.all.order('created_at desc')
  end
end
