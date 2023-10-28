;; Auto-generated. Do not edit!


(when (boundp 'uav_server::Move)
  (if (not (find-package "UAV_SERVER"))
    (make-package "UAV_SERVER"))
  (shadow 'Move (find-package "UAV_SERVER")))
(unless (find-package "UAV_SERVER::MOVE")
  (make-package "UAV_SERVER::MOVE"))
(unless (find-package "UAV_SERVER::MOVEREQUEST")
  (make-package "UAV_SERVER::MOVEREQUEST"))
(unless (find-package "UAV_SERVER::MOVERESPONSE")
  (make-package "UAV_SERVER::MOVERESPONSE"))

(in-package "ROS")





(defclass uav_server::MoveRequest
  :super ros::object
  :slots (_cmdEB _cmdPV _x _y _z _yaw ))

(defmethod uav_server::MoveRequest
  (:init
   (&key
    ((:cmdEB __cmdEB) 0)
    ((:cmdPV __cmdPV) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _cmdEB (round __cmdEB))
   (setq _cmdPV (round __cmdPV))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:cmdEB
   (&optional __cmdEB)
   (if __cmdEB (setq _cmdEB __cmdEB)) _cmdEB)
  (:cmdPV
   (&optional __cmdPV)
   (if __cmdPV (setq _cmdPV __cmdPV)) _cmdPV)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; int32 _cmdEB
    4
    ;; int32 _cmdPV
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmdEB
       (write-long _cmdEB s)
     ;; int32 _cmdPV
       (write-long _cmdPV s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmdEB
     (setq _cmdEB (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cmdPV
     (setq _cmdPV (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass uav_server::MoveResponse
  :super ros::object
  :slots (_feedback ))

(defmethod uav_server::MoveResponse
  (:init
   (&key
    ((:feedback __feedback) 0)
    )
   (send-super :init)
   (setq _feedback (round __feedback))
   self)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; int32 _feedback
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _feedback
       (write-long _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _feedback
     (setq _feedback (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass uav_server::Move
  :super ros::object
  :slots ())

(setf (get uav_server::Move :md5sum-) "cecb58d04127b4205e6e2be03ba9e46a")
(setf (get uav_server::Move :datatype-) "uav_server/Move")
(setf (get uav_server::Move :request) uav_server::MoveRequest)
(setf (get uav_server::Move :response) uav_server::MoveResponse)

(defmethod uav_server::MoveRequest
  (:response () (instance uav_server::MoveResponse :init)))

(setf (get uav_server::MoveRequest :md5sum-) "cecb58d04127b4205e6e2be03ba9e46a")
(setf (get uav_server::MoveRequest :datatype-) "uav_server/MoveRequest")
(setf (get uav_server::MoveRequest :definition-)
      "int32 cmdEB
int32 cmdPV
float32 x
float32 y
float32 z
float32 yaw
---
int32 feedback

")

(setf (get uav_server::MoveResponse :md5sum-) "cecb58d04127b4205e6e2be03ba9e46a")
(setf (get uav_server::MoveResponse :datatype-) "uav_server/MoveResponse")
(setf (get uav_server::MoveResponse :definition-)
      "int32 cmdEB
int32 cmdPV
float32 x
float32 y
float32 z
float32 yaw
---
int32 feedback

")



(provide :uav_server/Move "cecb58d04127b4205e6e2be03ba9e46a")


