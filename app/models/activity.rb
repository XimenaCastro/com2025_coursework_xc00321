class Activity < ApplicationRecord
	#An activity can have many countries
	belongs_to :country

	validates :name, presence: true
	validates :description, presence: true

	def each
		self.to_ary
	end
end
