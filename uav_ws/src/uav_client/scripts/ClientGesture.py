#!/usr/bin/python
# -*- coding:UTF-8 -*-
import rospy
import sys
from uav_client.srv import MoveSrvs	
from uav_client.srv import ModeSrvs
from uav_client.srv import UavSrvs
import numpy as np
import TrajectoryDesign as TD
import time
from std_msgs.msg import UInt16
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Quaternion
from nav_msgs.msg import Path
import socket

"""
 	Copyright(c) 2022-2023 Author. All rights reserved.
	
"""

tcp_server = socket.socket(family=socket.AF_INET,type=socket.SOCK_STREAM)
address = ('127.0.0.1',8000)
tcp_server.bind(address)
tcp_server.listen(128)
client_socket, clientAddr = tcp_server.accept()

cx = 0
cy = 0
cz = 0
cyaw = 0

square_length = 2.0
square_height = 1.0
circle_length = 2.0
circle_height = 1.0
triangle_length = 2.0
triangle_height = 1.0
trajectory_height =  1.0

step_length = 0.6

def poseCallback(msg):
	global cx
	global cy
	global cz
	global cyaw

	cx = msg.pose.position.x
	cy = msg.pose.position.y
	cz = msg.pose.position.z
	cyaw = msg.pose.orientation.w
	
def client_move_srv(mode_move):
	rospy.init_node('clientCmdGesture')
	rospy.wait_for_service("serHost")
	global cx
	global cy
	global cz
	global cyaw
	mode = -1
	cmdEB = 0
	cmdPV = 0
	x = 0
	y = 0
	z = 0
	yaw = 0
	dx = 0
	dy = 0
	dz = 0
	dyaw = 0

	if mode_move == '': 
		dx = 0
		dy = 0
		dz = 0
		dyaw = 0
	elif mode_move == '0': 
		dx = 0
		dy = step_length
		dz = 0
		dyaw = 0

	elif mode_move == '1': 
		dx = 0
		dy = -step_length
		dz = 0
		dyaw = 0
	elif mode_move == '2': 
		dx = 0
		dy = 0
		dz = step_length
		dyaw = 0 
	elif mode_move == '3': 
		dx = 0
		dy = 0
		dz = -step_length
		dyaw = 0
	elif mode_move == '5': 
		mode = 2
	elif mode_move == '6': 
		dx = 0
		dy = 0
		dz = step_length
		dyaw = 0
	elif mode_move == '7': 
		mode = 0
	elif mode_move == '8': 
		dx = 0
		dy = 0
		dz = 0
		dyaw = 0
	elif mode_move == '9':
		mode = 1
	elif mode_move == '10':	
		dx = step_length
		dy = 0
		dz = 0
		dyaw = 0
	elif mode_move == '11': 
		dx = -step_length
		dy = 0
		dz = 0
		dyaw = 0
	elif mode_move == '12':
		dx = 0
		dy = 0
		dz = 0
		dyaw = -10
	elif mode_move == '13': 
		dx = 0
		dy = 0
		dz = 0
		dyaw = -10		
	
	x = cx + dx
	y = cy + dy
	z = cz + dz
	yaw = cyaw + dyaw

	try:
		client_move = rospy.ServiceProxy("serHost", UavSrvs)
		resp = client_move(cmdEB,cmdPV, x, y, z, yaw, mode)
		pub = rospy.Publisher('/move_base_simple/goal',PoseStamped,queue_size = 10)
		pose_msg = PoseStamped()
		pose_msg.pose.position.x = x
		pose_msg.pose.position.y = y
		pose_msg.pose.position.z = z
		pose_msg.pose.orientation.x = x
		pose_msg.pose.orientation.y = y
		pose_msg.pose.orientation.z = z
		pose_msg.pose.orientation.w = yaw
		pose_msg.header.stamp = rospy.Time.now()
		pose_msg.header.frame_id = "0"
		pub.publish(pose_msg)
		rospy.loginfo("Message From server:%s"%resp.feedback)
		return resp.feedback

	except rospy.ServiceException, e:
		rospy.logwarn("Service call failed:%s"%e)
		
if __name__ == "__main__":
	mode_move = ''
	flag = False

	while not rospy.is_shutdown():

		# rospy.Subscriber("/uav1/mavros/local_position/pose",PoseStamped,poseCallback)
		rospy.Subscriber("/mavros/local_position/pose",PoseStamped,poseCallback)
		file = open('./mode.txt',mode='r')
		mode_move = file.read()
		print('mode_move_txt: ',mode_move)
		client_msg = client_socket.recv(1024)	
		print("receive data from client: ",client_msg.decode('utf-8'))
		mode_move = client_msg
		print('mode_move_socket: ',mode_move)
		send_data = client_socket.send("Server received successfully".encode('utf-8'))
		
		if mode_move == '4': 
			flag = True
			continue
		# composited commands
		if flag == True and mode_move != '4' and mode_move != '':
			print("enter into composited command")
			if mode_move == '0':
				for i in range(20):
						# r.sleep()
					client_move_srv('10')
					print("composited command 10")			
			elif mode_move == '1':
				for i in range(20):
					client_move_srv('11')
					print("composited command 11")				
			elif mode_move == '2':
				for i in range(20):
					client_move_srv('12')
					print("composited command 12")				
			elif mode_move == '3':
				for i in range(20):
					client_move_srv('13')
					print("composited command 13")					
			elif mode_move == '5':
				for i in range(10):
					client_move_srv('14')
					print("composited command 14")					
			elif mode_move == '6':
				for i in range(10):
					client_move_srv('15')
					print("composited command 15")					
			elif mode_move == '7':
				for i in range(10):
					client_move_srv('16')
					print("composited command 16")					
			elif mode_move == '9':
				for i in range(10):
					client_move_srv('18')
					print("composited command 18")	
			
			# Send to UAV			
			flag = False
			continue

		# single command
		if flag == False and mode_move != '4':
			if mode_move == '':
				for i in range(20):
					client_move_srv(mode_move) # Send to UAV
			if mode_move == '0':
				for i in range(20):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '1':
				for i in range(20):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '2':
				for i in range(20):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '3':
				for i in range(20):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '5':
				for i in range(1):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '6':
				for i in range(20):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '7':
				for i in range(1):
					client_move_srv(mode_move) # Send to UAV
			elif mode_move == '8':
				for i in range(10):
					client_move_srv(mode_move) # Send to UAV	
			elif mode_move == '9':
				for i in range(1):
					client_move_srv(mode_move) # Send to UAV
