
class WorkoutResultsController < ApplicationController
	protect_from_forgery except: [ :create ]

	layout 'dash'


	def create
		data = JSON.parse( params[:result] )

		workout = Workout.friendly.find( data['workout_id'] )
		@result = Observation.create( 
			observed_type:  'Workout',
			observed_id:  workout.id,
			value: 		 data['value'],
			unit: 		 data['unit'],
			started_at: data['started_at'],
			recorded_at: Time.zone.now
			)
	end


	def index
		@results = Observation.where( observed_type: 'Workout' )
	end

end