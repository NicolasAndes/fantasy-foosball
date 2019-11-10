class Match < ApplicationRecord
	has_many :games

	validates :name, :first_team, :second_team, presence: true
end
