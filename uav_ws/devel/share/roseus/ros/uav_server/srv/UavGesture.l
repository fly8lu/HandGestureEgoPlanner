;; Auto-generated. Do not edit!


(when (boundp 'uav_server::UavGesture)
  (if (not (find-package "UAV_SERVER"))
    (make-package "UAV_SERVER"))
  (shadow 'UavGesture (find-package "UAV_SERVER")))
(unless (find-package "UAV_SERVER::UAVGESTURE")
  (make-package "UAV_SERVER::UAVGESTURE"))
(unless (find-package "UAV_SERVER::UAVGESTUREREQUEST")
  (make-package "UAV_SERVER::UAVGESTUREREQUEST"))
(unless (find-package "UAV_SERVER::UAVGESTURERESPONSE")
  (make-package "UAV_SERVER::UAVGESTURERESPONSE"))

(in-package "ROS")





(defclass uav_server::UavGestureRequest
  :super ros::object
  :slots (_cmdEB _cmdPV _x _y _z _yaw _mode ))

(defmethod uav_server::UavGestureRequest
  (:init
   (&key
    ((:cmdEB __cmdEB) 0)
    ((:cmdPV __cmdPV) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _cmdEB (round __cmdEB))
   (setq _cmdPV (round __cmdPV))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   (setq _mode (round __mode))
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
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int8 _cmdEB
    1
    ;; int8 _cmdPV
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw
    4
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _cmdEB
       (write-byte _cmdEB s)
     ;; int8 _cmdPV
       (write-byte _cmdPV s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _cmdEB
     (setq _cmdEB (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmdEB 127) (setq _cmdEB (- _cmdEB 256)))
   ;; int8 _cmdPV
     (setq _cmdPV (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cmdPV 127) (setq _cmdPV (- _cmdPV 256)))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass uav_server::UavGestureResponse
  :super ros::object
  :slots (_feedback ))

(defmethod uav_server::UavGestureResponse
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
    ;; int8 _feedback
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _feedback
       (write-byte _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _feedback
     (setq _feedback (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _feedback 127) (setq _feedback (- _feedback 256)))
   ;;
   self)
  )

(defclass uav_server::UavGesture
  :super ros::object
  :slots ())

(setf (get uav_server::UavGesture :md5sum-) "cf0091775db056556bcbf0c6e550c71f")
(setf (get uav_server::UavGesture :datatype-) "uav_server/UavGesture")
(setf (get uav_server::UavGesture :request) uav_server::UavGestureRequest)
(setf (get uav_server::UavGesture :response) uav_server::UavGestureResponse)

(defmethod uav_server::UavGestureRequest
  (:response () (instance uav_server::UavGestureResponse :init)))

(setf (get uav_server::UavGestureRequest :md5sum-) "cf0091775db056556bcbf0c6e550c71f")
(setf (get uav_server::UavGestureRequest :datatype-) "uav_server/UavGestureRequest")
(setf (get uav_server::UavGestureRequest :definition-)
      "int8 cmdEB
int8 cmdPV
float32 x
float32 y
float32 z
float32 yaw
int8 mode
---
int8 feedback
")

(setf (get uav_server::UavGestureResponse :md5sum-) "cf0091775db056556bcbf0c6e550c71f")
(setf (get uav_server::UavGestureResponse :datatype-) "uav_server/UavGestureResponse")
(setf (get uav_server::UavGestureResponse :definition-)
      "int8 cmdEB
int8 cmdPV
float32 x
float32 y
float32 z
float32 yaw
int8 mode
---
int8 feedback
")



(provide :uav_server/UavGesture "cf0091775db056556bcbf0c6e550c71f")


