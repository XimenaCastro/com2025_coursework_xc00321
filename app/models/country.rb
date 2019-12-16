class Country < ApplicationRecord
	#Many countries have many different activities
	has_many :activities

	validates :name, presence: true
	validates :description, presence: true
end
