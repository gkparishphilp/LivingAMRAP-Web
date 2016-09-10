
class MeasurementsController < ApplicationController
	protect_from_forgery except: [ :create ]


	def create
		data = JSON.parse( params[:measurement] )

		workout = Workout.friendly.find( data['workout_id'] )
		@measurement = Measurement.create( 
			workout_id:  workout.id,
			value: 		 data['value'],
			unit: 		 data['unit'],
			started_at: data['started_at'],
			recorded_at: Time.zone.now
			)
	end


	def index
		@measurements = Measurement.all
	end

end