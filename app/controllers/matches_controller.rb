class MatchesController < ApplicationController
	before_action :find_match, only: [:show, :update, :edit, :destroy, :game]

	def index
		@matches = Match.all.order("created_at DESC")
	end

	def new
		@match = Match.new
	end

	def create
		@match = Match.new(match_params)

		if @match.save
			redirect_to matches_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
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

	def game
		@match.assign_winner
		if @match.update(game_params)
			redirect_to matches_path
		else
			redirect_to match_path(@match)
		end
	end

	private

	def match_params
		params.require(:match).permit(:name, :home_team_id, :away_team_id)
	end

	def find_match
		@match = Match.find(params[:id])
	end

	def game_params
		params.require(:match).permit(:game1_home_team_score, :game1_away_team_score, 
			:game2_home_team_score, :game2_away_team_score, :match_winner)
	end
end
