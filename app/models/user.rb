class User < ApplicationRecord
	validates :firstname, :lastname, presence: true, length: { minimum: 2 }
end
