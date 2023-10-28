# HandGestureEgoPlanner
========================

data_set
----------
	> Data Size: 10 Subjects * 3 Sessions * 10 Hand Gestures * 11 Times
	> Data Type: .dat

uav_ws
----------
	> uav_client:
		- SerialData: receive the origin data of hand gesture;
		- OnlineCompile: process the data of hand gesture online and extract the feature of hand gesture;
		- EffectiveExtract: detect the effective segment;
		- OnlineGestureSyn.py: recognize the hand gesture synchronously;
		- OnlineGestureAsyn.py: recognize the hand gesture asynchronously;
		- ClientGesture.py: convert the recognition results into the flight commands;
	> uav_server:
		- ServerGesture.cpp: receive the fight command and send to the flight controller of UAV;
		
# 声明

**本项目代码版权归属作者所有，请勿用于任何商业用途。本项目代码仅供技术研究，请勿用于非法用途，如有任何人凭此做任何非法事情，均与作者无关，特此声明。**

