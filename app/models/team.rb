class Team < ApplicationRecord	
	has_and_belongs_to_many :matches

	validates :name, :player, presence: true
	validates :name, uniqueness: true
	validates :player, numericality: { only_integer: true }
end
