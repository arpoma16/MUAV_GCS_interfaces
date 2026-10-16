string type
sensor_msgs/NavSatFix[] waypoint
float64 radius
float64 vel_max
float64 vel_idle
std_msgs/Float64MultiArray yaw
std_msgs/Float64MultiArray gimbal_pitch
std_msgs/Float64MultiArray speed

int8 yaw_mode
int8 trace_mode
int8 gimbal_pitch_mode
# Action when the mission finishes:
#   0 = MISSION_FINISHED_NO_ACTION            (Hover: hover at last waypoint)
#   1 = MISSION_FINISHED_GO_HOME              (Return to home)
#   2 = MISSION_FINISHED_AUTO_LANDING         (Auto landing: land at last waypoint)
#   3 = MISSION_FINISHED_GO_TO_FIRST_WAYPOINT (Return to point 0)
#   4 = MISSION_FINISHED_CONTINUE_UNTIL_STOP  (Infinite mode)
#   5 = MISSION_FINISHED_VISUAL_LANDING       (Visual landing: land at last waypoint)
# Default 1 (go home): a client that leaves it out does not get 0 (hover) by accident, since an int8 is 0 when unset.
int8 finish_action 1

std_msgs/Float64MultiArray command_list
std_msgs/Float64MultiArray command_parameter


