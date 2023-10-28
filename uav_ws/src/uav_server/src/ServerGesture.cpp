#include "ros/ros.h"
#include "uav_server/UavGesture.h"
#include "uav_server/ControlCommand.h"
#include "uav_server/TopicMove.h"
#include "std_msgs/Int8.h"

/*
    Copyright(c) 2022-2023 Author. All rights reserved.
*/
 	
int cmdEB, cmdPV;
float x, y, z, yaw;
int mode;
uav_server::ControlCommand control_data;
uav_server::TopicMove trajectory_data;

std_msgs::Int8 setmode_msg;
ros::Publisher move_pub;
ros::Publisher mode_pub;
bool serGestureFunction(uav_server::UavGesture::Request &req,
                      uav_server::UavGesture::Response &res)
{
    ROS_INFO("Request from client, cmdEB:%d, cmdPV:%d, x:%f, y:%f, z:%f, yaw:%f, mode:%d", req.cmdEB, req.cmdPV, req.x, req.y, req.z, req.yaw,req.mode);
    
    x = req.x;
    y = req.y;
    z = req.z;
    yaw = req.yaw;
    mode = req.mode;

    control_data.Reference_State.position_ref[0] = x;
    control_data.Reference_State.position_ref[1] = y;
    control_data.Reference_State.position_ref[2] = z;
    control_data.Reference_State.yaw_ref = yaw;
    control_data.header.stamp = ros::Time::now();
    control_data.Mode = uav_server::ControlCommand::Move;
    control_data.source = "formation_move";
    control_data.Reference_State.Move_frame = uav_server::PositionReference::ENU_FRAME;
    move_pub.publish(control_data);
    ROS_INFO("Control command sent");

    setmode_msg.data = mode;
    mode_pub.publish(setmode_msg);
    ROS_INFO("Setmode command sent");

    res.feedback = 0;

    return true;
}
int main(int argc,char** argv){
    ros::init(argc, argv, "serverGesture");
    ros::NodeHandle nh;
    move_pub = nh.advertise<uav_server::ControlCommand>("/prometheus/control_command", 10);
    mode_pub = nh.advertise<std_msgs::Int8>("/gesture/cmd/mode",10);
    ros::ServiceServer service = nh.advertiseService("serHost", serGestureFunction);
    ros::spin();
    return 0;
}