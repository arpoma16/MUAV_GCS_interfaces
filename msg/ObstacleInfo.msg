# Closest obstacle on each of the six sides of the vehicle.
# Each side is a distance sensor with a conical field of view; the reported
# distance is the minimum over that cone. Sides are in the vehicle body frame
# (header.frame_id): front=+X, back=-X, left=+Y, right=-Y, up=+Z, down=-Z.
#
# Published with sensor-data QoS (best effort): subscribe with
# rclpy.qos.qos_profile_sensor_data / rclcpp::SensorDataQoS(), otherwise
# no messages are received.

std_msgs/Header header		# stamp: simulation time

ObstaclePosition front
ObstaclePosition back
ObstaclePosition left
ObstaclePosition right
ObstaclePosition up
ObstaclePosition down
