class Post < ApplicationRecord
	belongs_to :user
	belongs_to :topic
	belongs_to :disease
	has_many :comments

	validates :title, uniqueness: true
end
