
class Measurement < ActiveRecord::Base
	belongs_to 	:workout
	belongs_to 	:workout_segment 
	belongs_to 	:metric
end