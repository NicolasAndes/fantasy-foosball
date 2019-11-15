class TeamsController < ApplicationController
	before_action :find_team, only: [ :show, :update, :edit, :destroy ]

	def index		
		@teams = Team.all.order("created_at DESC")
	end

	def new
		@team = Team.new
	end

	def create
		@team = Team.new(team_params)

		if @team.save
			redirect_to teams_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @team.update(team_params)
			redirect_to @team
		else
			render 'edit'
		end
	end

	def destroy
		@team.destroy

		redirect_to teams_path
	end

	def ranking
		@teams = Team.all
	end

	private

	def team_params
		params.require(:team).permit(:name, :player) 
	end

	def find_team
		@team = Team.find(params[:id])
	end
end
