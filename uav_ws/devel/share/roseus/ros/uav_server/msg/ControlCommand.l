;; Auto-generated. Do not edit!


(when (boundp 'uav_server::ControlCommand)
  (if (not (find-package "UAV_SERVER"))
    (make-package "UAV_SERVER"))
  (shadow 'ControlCommand (find-package "UAV_SERVER")))
(unless (find-package "UAV_SERVER::CONTROLCOMMAND")
  (make-package "UAV_SERVER::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*IDLE*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*IDLE* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*IDLE* 0)
(intern "*TAKEOFF*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*TAKEOFF* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*TAKEOFF* 1)
(intern "*HOLD*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*HOLD* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*HOLD* 2)
(intern "*LAND*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*LAND* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*LAND* 3)
(intern "*MOVE*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*MOVE* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*MOVE* 4)
(intern "*DISARM*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*DISARM* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*DISARM* 5)
(intern "*USER_MODE1*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*USER_MODE1* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*USER_MODE1* 6)
(intern "*USER_MODE2*" (find-package "UAV_SERVER::CONTROLCOMMAND"))
(shadow '*USER_MODE2* (find-package "UAV_SERVER::CONTROLCOMMAND"))
(defconstant uav_server::ControlCommand::*USER_MODE2* 7)
(defclass uav_server::ControlCommand
  :super ros::object
  :slots (_header _Command_ID _source _Mode _Reference_State ))

(defmethod uav_server::ControlCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Command_ID __Command_ID) 0)
    ((:source __source) "")
    ((:Mode __Mode) 0)
    ((:Reference_State __Reference_State) (instance uav_server::PositionReference :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _Command_ID (round __Command_ID))
   (setq _source (string __source))
   (setq _Mode (round __Mode))
   (setq _Reference_State __Reference_State)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Command_ID
   (&optional __Command_ID)
   (if __Command_ID (setq _Command_ID __Command_ID)) _Command_ID)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:Mode
   (&optional __Mode)
   (if __Mode (setq _Mode __Mode)) _Mode)
  (:Reference_State
   (&rest __Reference_State)
   (if (keywordp (car __Reference_State))
       (send* _Reference_State __Reference_State)
     (progn
       (if __Reference_State (setq _Reference_State (car __Reference_State)))
       _Reference_State)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _Command_ID
    4
    ;; string _source
    4 (length _source)
    ;; uint8 _Mode
    1
    ;; uav_server/PositionReference _Reference_State
    (send _Reference_State :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _Command_ID
       (write-long _Command_ID s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; uint8 _Mode
       (write-byte _Mode s)
     ;; uav_server/PositionReference _Reference_State
       (send _Reference_State :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _Command_ID
     (setq _Command_ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _Mode
     (setq _Mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uav_server/PositionReference _Reference_State
     (send _Reference_State :deserialize buf ptr-) (incf ptr- (send _Reference_State :serialization-length))
   ;;
   self)
  )

(setf (get uav_server::ControlCommand :md5sum-) "605914d2f9074bf8ea386da8eb051ca0")
(setf (get uav_server::ControlCommand :datatype-) "uav_server/ControlCommand")
(setf (get uav_server::ControlCommand :definition-)
      "std_msgs/Header header

## 控制命令的编号 防止接收到错误命令， 编号应该逐次递加
uint32 Command_ID

## 消息来源
string source
## 控制命令的模式 
uint8 Mode
# enum Mode 控制模式枚举
uint8 Idle=0
uint8 Takeoff=1
uint8 Hold=2
uint8 Land=3
uint8 Move=4
uint8 Disarm=5
uint8 User_Mode1=6
uint8 User_Mode2=7

## 控制参考量 
## 位置参考量：位置、速度、加速度、加加速度、加加加速度
## 角度参考量：偏航角、偏航角速度、偏航角加速度
PositionReference Reference_State

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: uav_server/PositionReference
std_msgs/Header header

## 位置控制参考量

## 默认为 XYZ位置追踪模式 （sub_mode = 0）； 速度追踪启用时，控制器不考虑位置参考量及位置状态反馈
uint8 Move_mode

uint8 XYZ_POS      = 0  ##0b00
uint8 XY_POS_Z_VEL = 1  ##0b01
uint8 XY_VEL_Z_POS = 2  ##0b10
uint8 XYZ_VEL = 3       ##0b11
uint8 XYZ_ACC = 4
uint8 TRAJECTORY   = 5  

uint8 Move_frame
# 默认情况下均为ENU_FRAME,注意轨迹追踪和XYZ_ACC一定是ENU_FRAME
uint8 ENU_FRAME  = 0
uint8 BODY_FRAME = 1
uint8 MIX_FRAME = 2 ##2020.4.6 临时增加的模式，后期需要统一整合，该模式下，xy采用机体系控制，z采用enu系控制



## 时刻： 用于轨迹追踪
float32 time_from_start          ## [s]

## 参考量：位置、速度、加速度、加加速度、加加加速度
float32[3] position_ref          ## [m]
float32[3] velocity_ref          ## [m/s]
float32[3] acceleration_ref      ## [m/s^2]
## float32[3] jerk_ref              ## [m/s^3]
## float32[3] snap_ref              ## [m/s^4]

## 角度参考量：偏航角、偏航角速度、偏航角加速度
bool Yaw_Rate_Mode                      ## True 代表控制偏航角速率
float32 yaw_ref                  ## [rad]
float32 yaw_rate_ref             ## [rad/s] 
## float32 yaw_acceleration_ref     ## [rad/s] 
")



(provide :uav_server/ControlCommand "605914d2f9074bf8ea386da8eb051ca0")


