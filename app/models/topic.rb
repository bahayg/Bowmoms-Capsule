class Topic < ApplicationRecord
	has_many :posts
	has_many :diseases, through: :posts
end
