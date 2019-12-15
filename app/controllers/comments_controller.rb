class CommentsController < ApplicationController

	#method for create a new comment
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comments_params)
		redirect_to post_path(@post)
	end

	#Delete Comment
	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end

  #Strong parameteres
	private
	#Defining strong parameteres for comments
	def comments_params
		params.require(:comment).permit(:name, :comment)

	end
end
