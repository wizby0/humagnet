class WallsController < ApplicationController
	#before_action : set_wall, only: [:show, :edit, :destroy]
	#before_action : check_authority
	# after_action : set_wall, except
	def show
		
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
		 @wall = Wall.find(params[:id])
 
		  if @wall.update(wall_params)
		    redirect_to @wall
		  else
		    render 'edit'
		  end

	end
	def destroy
		@wall.destroy
		redirect_to walls_path
	end

	
	def timeline
		@walls = Wall.all
	end

	private
		def wall_params
			params.require(:wall).permit(:title, :text,:user_id,:read_authority)
		end
	private
		def set_wall
			@wall = Wall.find(params[:id]) 
		end
end
