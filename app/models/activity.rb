class Activity < ApplicationRecord
	#An activity can have many countries
	belongs_to :countries
end
