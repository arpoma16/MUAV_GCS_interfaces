# Closest obstacle seen by one distance sensor (one side of the vehicle).

bool detected		# true if the sensor sees something within its range
float32 distance	# Minimum distance over the sensor's field of view (m).
			# +inf when nothing is detected (detected=false).
			# An obstacle closer than the sensor's minimum range is reported
			# as detected=true with distance = minimum range (the real distance
			# is smaller).
