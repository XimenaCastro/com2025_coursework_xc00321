class Comment < ApplicationRecord
	#One comment only belongs to one post
	belongs_to :post
end
