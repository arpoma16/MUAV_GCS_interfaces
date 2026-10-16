
uint64 timestamp					# time since system start (microseconds)

uint16 GCS_CMD_CUSTOM_0 = 0				# test command
uint16 GCS_CMD_CUSTOM_1 = 1				# test command
uint16 GCS_CMD_CUSTOM_2 = 2				# test command
uint16 GCS_CMD_FINISHED_MISSION = 16    # Notificate to GCS Mission is finished	
uint16 GCS_CMD_DONWLOADED_FILES = 17	# Notificate to GCS Finish Download Files

# Commands from the GCS to a UAV (service <ns>/offboard/gcs_command, progress and result on <ns>/offboard/out/gcs_command_ack)
uint16 GCS_CMD_PAUSE_MISSION = 32		# Hold the position. Cancels a move in progress. Only while flying
uint16 GCS_CMD_RESUME_MISSION = 33		# Resume from the CURRENT waypoint, flying from wherever the UAV is
uint16 GCS_CMD_MOVE_RELATIVE = 34		# Move relative to the UAV, body frame FRD (heading frozen at the command). Only paused or hovering
										# param1: forward [m], param2: right [m], param3: down [m] (negative = up), param4: speed [m/s] (0 = default)
										# The move is LIMITED to what is safe: shortened if an obstacle is in the way (the ack tells how far it goes:
										# result_param2 = executed distance in cm), rejected if there is no room, aborted if one appears while moving
uint16 GCS_CMD_CANCEL_MOVE = 35			# Stop the move in progress and hold the position

string sender_ns		# Namespace of the UAV sending the command
uint32 command			# Command ID
float32 param1			# Parameter 1, as defined uint16 GCS_CMD enum.
float32 param2			# Parameter 2, as defined uint16 GCS_CMD enum.
float32 param3			# Parameter 3, as defined uint16 GCS_CMD enum.
float32 param4			# Parameter 4, as defined uint16 GCS_CMD enum.
float64 param5			# Parameter 5, as defined uint16 GCS_CMD enum.