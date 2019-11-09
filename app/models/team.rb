class Team < ApplicationRecord
	validates :name, :player, presence: true
	validates :player, numericality: { only_integer: true }
end
