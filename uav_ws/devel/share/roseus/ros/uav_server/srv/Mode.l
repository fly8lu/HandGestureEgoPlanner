;; Auto-generated. Do not edit!


(when (boundp 'uav_server::Mode)
  (if (not (find-package "UAV_SERVER"))
    (make-package "UAV_SERVER"))
  (shadow 'Mode (find-package "UAV_SERVER")))
(unless (find-package "UAV_SERVER::MODE")
  (make-package "UAV_SERVER::MODE"))
(unless (find-package "UAV_SERVER::MODEREQUEST")
  (make-package "UAV_SERVER::MODEREQUEST"))
(unless (find-package "UAV_SERVER::MODERESPONSE")
  (make-package "UAV_SERVER::MODERESPONSE"))

(in-package "ROS")





(defclass uav_server::ModeRequest
  :super ros::object
  :slots (_cmd ))

(defmethod uav_server::ModeRequest
  (:init
   (&key
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass uav_server::ModeResponse
  :super ros::object
  :slots (_feedback ))

(defmethod uav_server::ModeResponse
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

(defclass uav_server::Mode
  :super ros::object
  :slots ())

(setf (get uav_server::Mode :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_server::Mode :datatype-) "uav_server/Mode")
(setf (get uav_server::Mode :request) uav_server::ModeRequest)
(setf (get uav_server::Mode :response) uav_server::ModeResponse)

(defmethod uav_server::ModeRequest
  (:response () (instance uav_server::ModeResponse :init)))

(setf (get uav_server::ModeRequest :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_server::ModeRequest :datatype-) "uav_server/ModeRequest")
(setf (get uav_server::ModeRequest :definition-)
      "int32 cmd
---
int32 feedback

")

(setf (get uav_server::ModeResponse :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_server::ModeResponse :datatype-) "uav_server/ModeResponse")
(setf (get uav_server::ModeResponse :definition-)
      "int32 cmd
---
int32 feedback

")



(provide :uav_server/Mode "4e20b2f68ee6c802f503418ca4f6f6af")


