#Posts Controller
class PostsController < ApplicationController
	before_action :find_post, only: [:show, :update, :edit, :destroy]

	#method to show all the posts
	def index
		@posts = Post.all.order("created_at DESC")
	end

	# method for a new post
	def new
		@post = Post.new
	end

	#method for create a new post
	def create
		@post = Post.new(post_params)

		#if the post has been saved redirects to index of posts
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	#Show method
	def show
	end
	#Method to linkk to the about page

	#def about
	#end

	#Method to update the post
	def update
		#If a post has the post parameteres (title and content) redirect to the index of posts
		if @post.update(post_params)
			redirect_to @post
		else
			render 'edit'
		end
	end

	def edit
	end

	#Delete Post
	def destroy
		@post.destroy
		#After deleting post redirect the user to posts index
		redirect_to posts_path

	end

	#Strong parameteres
	private

	#Defining strong parameteres for posts
	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
	 	@post = Post.find(params[:id])
	end

end
