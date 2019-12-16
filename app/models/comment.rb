class Comment < ApplicationRecord
	#One comment only belongs to one post
	belongs_to :post

	validates :name, presence: true
	validates :comment, presence: true

end
