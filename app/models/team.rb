class Team < ApplicationRecord	
	has_many :matches

	validates :name, :player, presence: true
	validates :player, numericality: { only_integer: true }
end
