
uint64 timestamp					# time since system start (microseconds)

uint16 GCS_CMD_CUSTOM_0 = 0				# test command
uint16 GCS_CMD_CUSTOM_1 = 1				# test command
uint16 GCS_CMD_CUSTOM_2 = 2				# test command
uint16 GCS_CMD_FINISHED_MISSION = 16    # Notificate to GCS Mission is finished	
uint16 GCS_CMD_DONWLOADED_FILES = 17	# Notificate to GCS Finish Download Files

string sender_ns		# Namespace of the UAV sending the command
uint32 command			# Command ID
float32 param1			# Parameter 1, as defined uint16 GCS_CMD enum.
float32 param2			# Parameter 2, as defined uint16 GCS_CMD enum.
float32 param3			# Parameter 3, as defined uint16 GCS_CMD enum.
float32 param4			# Parameter 4, as defined uint16 GCS_CMD enum.
float64 param5			# Parameter 5, as defined uint16 GCS_CMD enum.