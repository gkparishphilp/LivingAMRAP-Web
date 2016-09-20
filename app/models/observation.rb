
class Observation < ActiveRecord::Base

	#acts_as_nested_set

	attr_accessor :content

	belongs_to 	:observed, polymorphic: true


	def human_unit
		if [ 'day', 'hr', 'hour', 'minute', 'min', 'sec', 'seconds', 'ms' ].include?( self.unit )
			return 'time'
		end
	end

	def human_value
		if [ 'day', 'hr', 'hour', 'minute', 'min', 'sec', 'seconds' ].include?( self.unit )
			ChronicDuration.output( self.value, format: :chrono )
		elsif self.unit == 'ms'
			seconds = ( self.value / 1000 ).round( 2 )
			ChronicDuration.output( seconds, format: :chrono )
		else
			self.value
		end
	end


end