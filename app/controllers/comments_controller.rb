class CommentsController < ApplicationController
	def create
		@wall = Wall.find(params[:wall_id])
		@comment = @wall.comments.create(comment_params)
		redirect_to wall_path(@wall)
	end
	def destory
		@wall = Wall.find(params[:wall_id])
		@comment = @wall.comments.find(params[:id])
		@comment.destory
		#redirect_to wall_path(@wall)
		redirect_to wall_path(@wall)
	end

	private 
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end

end
