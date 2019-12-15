class ActivitiesController < ApplicationController

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

    #if the activity has been saved redirects to index of activities
		if @activity.save
			redirect_to activities_path
		else
			render 'new'
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
		params.require(:activity).permit(:name, :description)
	end

	def find_activity
	 	@activity = Activity.find(params[:id])
	end
end
