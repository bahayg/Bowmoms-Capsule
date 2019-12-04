class Disease < ApplicationRecord
    has_many :posts
	has_many :topics, through: :posts
end
