class WallsController < ApplicationController
	def show
		@wall = Wall.find(params[:id])
	end

	def new
	end

	def index
		@walls = Wall.all
	end

	def create
	#	render plain: params[:wall].inspect
	#	render Wall.new(wall_params).inspect
		@wall = Wall.new(wall_params)

		@wall.save
		redirect_to @wall

	end
	def edit
	end
	def update
	end
	def destroy
	end

	private
		def wall_params
			params.require(:wall).permit(:title, :text,:user_id,:read_authority)
		end
end
