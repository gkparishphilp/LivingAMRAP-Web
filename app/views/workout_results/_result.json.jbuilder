json.id 			result.id
json.tmp_id			result.tmp_id
json.label  	 	result.observed.to_s
json.workout_type 	result.observed.workout_type
json.value 			result.value
json.unit 			result.unit
json.sub_value 		result.sub_value
json.started_at 	result.started_at.to_s( :short )
json.url 			workout_result_url(result, format: :json)