class Post < ApplicationRecord
	#One post has manny comments
	has_many :comments
end
