
class Observation < ActiveRecord::Base

	attr_accessor :content

	belongs_to 	:observed, polymorphic: true




	def human_value
		if [ 'day', 'hr', 'hour', 'minute', 'min', 'sec', 'seconds' ].include?( self.unit )
			ChronicDuration.output( self.value, format: :chrono )
		else
			"#{self.value} #{self.activity.try( :unit ).try( :pluralize )}"
		end
	end


end