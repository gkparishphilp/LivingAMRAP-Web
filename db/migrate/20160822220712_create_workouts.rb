
# workout has many movements
# movements require equipment
# can search for workouts that match your equipment
# workout has many segments
# segments are timed intervals to run the clock

class CreateWorkouts < ActiveRecord::Migration
	def change
		create_table :workouts do |t|
			t.string 		:title
			t.string 		:slug
			t.string 		:workout_type 	# reps (amrap), rounds (rft), emom, tabata
			t.string 		:avatar
			t.string		:cover_img
			t.text 			:description
			t.text 			:content
			t.integer 		:total_duration # sum of segments
			t.integer 		:total_reps 	# sum of segments
			t.integer		:time_cap 		# seconds to cap out
			t.timestamps 	null: false
		end


		create_table :equipment do |t|
			t.references 	:parent #for variations e.g. different height plyo box
			t.integer 		:rgt
			t.integer 		:lft
			t.string 		:slug
			t.string 		:title
			t.text			:aliases, array: true, default: []
			t.text 			:description
			t.text 			:content
			t.string		:unit_type
			t.integer 		:unit
			t.timestamps
		end

		
		create_table :metrics do |t| 
			# to keep lookup table for observations
			t.string 		:title
			t.text			:aliases, array: true, default: []
			t.string		:unit
		end


		create_table :movements do |t|
			t.references 	:equipment  # required equipment
			t.references 	:parent #for variations
			t.integer 		:rgt
			t.integer 		:lft
			t.string 		:slug 
			t.string 		:title
			t.text			:aliases, array: true, default: []
			t.string 		:description
			t.text 			:content 
			t.string 		:measured_by, default: :reps # reps, time, distance 
			t.timestamps
		end


		create_table :observations do |t| 
			t.references 	:user
			t.references 	:parent 			# nest segment results under parent workout result
			t.integer 		:lft
			t.integer 		:rgt
			t.references 	:observed, polymorphic: true
			t.string 		:title
			t.float 		:value 
			t.string 		:unit 				# lb, time, reps, etc
			t.string 		:rx 				# rx or modifications, num-rep-max for lift maxes
			t.text 			:notes 
			t.datetime 		:started_at 
			t.datetime 		:ended_at 
			t.datetime 		:recorded_at
			t.timestamps 
		end


		# just to keep track & query workouts based on movement e.g. which workouts prescribe situps?
		# also, query wokouts based on equipment required. e.g. I only have a jumprope, which workouts can I do?
		create_table :workout_movements do |t|
			t.references 	:workout 
			t.references 	:movement 
			t.references 	:equipment
			t.string 		:m_rx
			t.string 		:f_rx
			t.timestamps 
		end

		create_table :workout_segments do |t|
			t.references 	:workout
			t.integer 		:seq, default: 1
			t.string 		:title
			t.text 			:description 					# in seconds
			t.text 			:content
			t.string 		:segment_type, default: :ft 	# ft, amrap, rft (w/rpt_count), emom, tabata (rpt 8), accumulate, warmup, mobility, strength, rest
			t.string 		:clock_dir, default: :down
			t.string 		:to_record, default: :time 	# rounds (reps), time, distance
			t.integer		:duration 						# in seconds
			t.integer 		:repeat_count, default: 0 		# use this to store rounds for time -- no need to create a segment per round. Default 8 for tabata. Default num minutes for emom
			t.integer 		:repeat_interval, default: 60 	# in seconds, so 60 for emom, 120 for eomom, 300 for every 5 mins on the minute
			t.integer 		:amrap_rep_interval, default: 0 # 0 is amrap structured via rounds / any positive number for a climbing rep scheme e.g. 3, 6, 9, 12... wld be 3
			t.integer 		:total_reps, default: 0 		# total reps in a round e.g. 30 for Cindy
			t.timestamps 
		end

	end
end
