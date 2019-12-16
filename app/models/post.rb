class Post < ApplicationRecord
	#One post has manny comments
	has_many :comments

	validates :title, presence: true
	validates :content, presence: true
end
