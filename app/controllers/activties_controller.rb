class ActivtiesController < ApplicationController
	before_action :find_activity, only: [:show, :update, :edit, :destroy]	
	
	def activity	
	end
	
	def index
		@activities = Activity.all.order("created_at DESC")
	end

	def new
		@activity = Activity.new
	end

	def create
		@activity = Activity.new(activity_params)

		if @activity.save
			redirect_to @activity
		else
			render 'new'
		end
	end

	def show
	end


	def edit
	end


	def update
		
		if @activity.update(activity_params)
			redirect_to @activity
		else
			render 'edit'
		end
	end

	def destroy
		@activity.destroy

		redirect_to activities_path

	end

	private

	def activity_params
		params.require(:activity).permit(:title, :content)
	end

	def find_activity
	 	@activity = Activity.find(params[:id])
	end

end

end
