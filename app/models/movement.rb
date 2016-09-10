
class Movement < ActiveRecord::Base

	validate :unique_aliases

	acts_as_nested_set

	
	belongs_to :equipment 

	has_many :workout_movements 
	has_many :workouts, through: :workout_movements 
	
	include FriendlyId
	friendly_id :title, use: [ :slugged, :history ]


	

	def self.find_by_alias( term )
		where( ":term = ANY( aliases )", term: term ).first
	end



	def to_s
		self.title
	end



	private

		def unique_aliases
			dups = Movement.pluck( :aliases ).flatten & self.aliases
			if dups.present?
				errors.add( :aliases, "Aliases #{dups.join(', ')} taken." )
			end
		end
	
end