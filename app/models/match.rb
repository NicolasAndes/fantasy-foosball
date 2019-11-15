class Match < ApplicationRecord

	belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id'
	belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id'

	validates :name, :home_team_id, :away_team_id, presence: true

	attr_accessor :assign_winner

  	def game1_winner
  		if game1_home_team_score.to_i > game1_away_team_score.to_i
  			return home_team_id 
  		else
  			return away_team_id
  		end
  	end


  	def game2_winner
  		if game2_home_team_score.to_i > game2_away_team_score.to_i
  			return home_team_id 
  		else
  			return away_team_id
  		end
  	end

  	def game3_winner
  		if game3_home_team_score.to_i > game3_away_team_score.to_i
  			return home_team_id 
  		else
  			return away_team_id
  		end
  	end

  	def winner
  		if game1_winner == game2_winner
  			return game1_winner 
  		else
  			return game3_winner
  		end
  	end

  	def assign_winner
  		self.update(match_winner: winner)
  	end

end
