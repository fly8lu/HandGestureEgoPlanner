;; Auto-generated. Do not edit!


(when (boundp 'uav_client::MoveSrvs)
  (if (not (find-package "UAV_CLIENT"))
    (make-package "UAV_CLIENT"))
  (shadow 'MoveSrvs (find-package "UAV_CLIENT")))
(unless (find-package "UAV_CLIENT::MOVESRVS")
  (make-package "UAV_CLIENT::MOVESRVS"))
(unless (find-package "UAV_CLIENT::MOVESRVSREQUEST")
  (make-package "UAV_CLIENT::MOVESRVSREQUEST"))
(unless (find-package "UAV_CLIENT::MOVESRVSRESPONSE")
  (make-package "UAV_CLIENT::MOVESRVSRESPONSE"))

(in-package "ROS")





(defclass uav_client::MoveSrvsRequest
  :super ros::object
  :slots (_cmdEB _cmdPV _x _y _z _yaw ))

(defmethod uav_client::MoveSrvsRequest
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

(defclass uav_client::MoveSrvsResponse
  :super ros::object
  :slots (_feedback ))

(defmethod uav_client::MoveSrvsResponse
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

(defclass uav_client::MoveSrvs
  :super ros::object
  :slots ())

(setf (get uav_client::MoveSrvs :md5sum-) "cecb58d04127b4205e6e2be03ba9e46a")
(setf (get uav_client::MoveSrvs :datatype-) "uav_client/MoveSrvs")
(setf (get uav_client::MoveSrvs :request) uav_client::MoveSrvsRequest)
(setf (get uav_client::MoveSrvs :response) uav_client::MoveSrvsResponse)

(defmethod uav_client::MoveSrvsRequest
  (:response () (instance uav_client::MoveSrvsResponse :init)))

(setf (get uav_client::MoveSrvsRequest :md5sum-) "cecb58d04127b4205e6e2be03ba9e46a")
(setf (get uav_client::MoveSrvsRequest :datatype-) "uav_client/MoveSrvsRequest")
(setf (get uav_client::MoveSrvsRequest :definition-)
      "int32 cmdEB
int32 cmdPV
float32 x
float32 y
float32 z
float32 yaw
---
int32 feedback

")

(setf (get uav_client::MoveSrvsResponse :md5sum-) "cecb58d04127b4205e6e2be03ba9e46a")
(setf (get uav_client::MoveSrvsResponse :datatype-) "uav_client/MoveSrvsResponse")
(setf (get uav_client::MoveSrvsResponse :definition-)
      "int32 cmdEB
int32 cmdPV
float32 x
float32 y
float32 z
float32 yaw
---
int32 feedback

")



(provide :uav_client/MoveSrvs "cecb58d04127b4205e6e2be03ba9e46a")


