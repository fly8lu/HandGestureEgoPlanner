;; Auto-generated. Do not edit!


(when (boundp 'uav_client::Mode)
  (if (not (find-package "UAV_CLIENT"))
    (make-package "UAV_CLIENT"))
  (shadow 'Mode (find-package "UAV_CLIENT")))
(unless (find-package "UAV_CLIENT::MODE")
  (make-package "UAV_CLIENT::MODE"))
(unless (find-package "UAV_CLIENT::MODEREQUEST")
  (make-package "UAV_CLIENT::MODEREQUEST"))
(unless (find-package "UAV_CLIENT::MODERESPONSE")
  (make-package "UAV_CLIENT::MODERESPONSE"))

(in-package "ROS")





(defclass uav_client::ModeRequest
  :super ros::object
  :slots (_cmd ))

(defmethod uav_client::ModeRequest
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

(defclass uav_client::ModeResponse
  :super ros::object
  :slots (_feedback ))

(defmethod uav_client::ModeResponse
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

(defclass uav_client::Mode
  :super ros::object
  :slots ())

(setf (get uav_client::Mode :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_client::Mode :datatype-) "uav_client/Mode")
(setf (get uav_client::Mode :request) uav_client::ModeRequest)
(setf (get uav_client::Mode :response) uav_client::ModeResponse)

(defmethod uav_client::ModeRequest
  (:response () (instance uav_client::ModeResponse :init)))

(setf (get uav_client::ModeRequest :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_client::ModeRequest :datatype-) "uav_client/ModeRequest")
(setf (get uav_client::ModeRequest :definition-)
      "int32 cmd
---
int32 feedback

")

(setf (get uav_client::ModeResponse :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_client::ModeResponse :datatype-) "uav_client/ModeResponse")
(setf (get uav_client::ModeResponse :definition-)
      "int32 cmd
---
int32 feedback

")



(provide :uav_client/Mode "4e20b2f68ee6c802f503418ca4f6f6af")


