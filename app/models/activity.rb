class Activity < ApplicationRecord
	#An activity can have many countries
	belongs_to :countries

	validates :name, presence: true
	validates :description, presence: true
end
