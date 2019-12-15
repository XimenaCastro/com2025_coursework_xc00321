class Country < ApplicationRecord
	#Many countries have many different activities
	has_many :activities
end
