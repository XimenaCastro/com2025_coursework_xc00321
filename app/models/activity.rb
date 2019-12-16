class Activity < ApplicationRecord
	#An activity can have many countries
	has_many :countries

	validates :name, presence: true
	validates :description, presence: true
end
