class MatchesController < ApplicationController
	before_action :find_match, only: [:show, :update, :edit, :destroy]

	def index
		@matches = Match.all.order("created_at DESC")
	end

	def new
		@match = Match.new
		@teams = Team.all
	end

	def create
		@match = Match.new(match_params)
		@teams = Team.all

		if @match.save
			redirect_to matches_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
		@teams = Team.all
	end

	def update
		@teams = Team.all
		if @match.update(match_params)
			redirect_to matches_path
		else
			render 'edit'
		end
	end

	def destroy
		@match.destroy

		redirect_to matches_path
	end

	private

	def match_params
		params.require(:match).permit(:name, :first_team, :second_team)
	end

	def find_match
		@match = Match.find(params[:id])
	end
end
