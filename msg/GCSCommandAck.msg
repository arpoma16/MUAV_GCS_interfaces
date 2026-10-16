uint64 timestamp		# time since system start (microseconds)

# Result cases. This follows the MAVLink MAV_RESULT enum definition
uint8 GCS_CMD_RESULT_ACCEPTED = 0			    # Command ACCEPTED and EXECUTED |
uint8 GCS_CMD_RESULT_TEMPORARILY_REJECTED = 1	# Command TEMPORARY REJECTED/DENIED |
uint8 GCS_CMD_RESULT_DENIED = 2			        # Command PERMANENTLY DENIED |
uint8 GCS_CMD_RESULT_UNSUPPORTED = 3		    # Command UNKNOWN/UNSUPPORTED |
uint8 GCS_CMD_RESULT_FAILED = 4			        # Command executed, but failed |
uint8 GCS_CMD_RESULT_IN_PROGRESS = 5		    # Command being executed |
uint8 GCS_CMD_RESULT_CANCELLED = 6			    # Command Canceled


uint32 command						# Command that is being acknowledged
uint8 result						# Command result
uint8 result_param1					# Also used as progress[%], it can be set with the reason why the command was denied, or the progress percentage when result is MAV_RESULT_IN_PROGRESS
int32 result_param2					# Additional parameter of the result, example: which parameter of MAV_CMD_NAV_WAYPOINT caused it to be denied.

# Reasons, in result_param1 when the result is TEMPORARILY_REJECTED, DENIED or FAILED (with IN_PROGRESS it is the progress [%])
uint8 GCS_CMD_REASON_NONE = 0
uint8 GCS_CMD_REASON_NOT_FLYING = 1			# the UAV is on the ground
uint8 GCS_CMD_REASON_TAKEOFF = 2			# taking off
uint8 GCS_CMD_REASON_LANDING = 3			# landing, or returning home to land
uint8 GCS_CMD_REASON_EMERGENCY = 4			# emergency (e.g. the UAV left OFFBOARD)
uint8 GCS_CMD_REASON_MISSION_RUNNING = 5	# the mission is running: pause it first
uint8 GCS_CMD_REASON_NOT_PAUSED = 6			# nothing to resume
uint8 GCS_CMD_REASON_MOVING = 7				# a move is already in progress: cancel it first
uint8 GCS_CMD_REASON_NO_MOVE = 8			# no move to cancel
uint8 GCS_CMD_REASON_BAD_PARAMS = 9			# invalid parameters (NaN, too far, zero)
uint8 GCS_CMD_REASON_OBSTACLE = 10			# no room to move, or an obstacle stopped the move
uint8 GCS_CMD_REASON_NO_PERCEPTION = 11		# the path cannot be checked: no fresh obstacle data
uint8 GCS_CMD_REASON_ALTITUDE = 12			# the move would leave the allowed altitude range
uint8 GCS_CMD_REASON_TIMEOUT = 13			# the move took too long
