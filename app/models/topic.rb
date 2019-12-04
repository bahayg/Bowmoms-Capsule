class Topic < ApplicationRecord
    has_many :diseases
	has_many :posts
	has_many :comments, through: :posts
end
