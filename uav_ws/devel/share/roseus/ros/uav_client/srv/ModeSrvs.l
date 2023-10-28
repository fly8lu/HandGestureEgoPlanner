;; Auto-generated. Do not edit!


(when (boundp 'uav_client::ModeSrvs)
  (if (not (find-package "UAV_CLIENT"))
    (make-package "UAV_CLIENT"))
  (shadow 'ModeSrvs (find-package "UAV_CLIENT")))
(unless (find-package "UAV_CLIENT::MODESRVS")
  (make-package "UAV_CLIENT::MODESRVS"))
(unless (find-package "UAV_CLIENT::MODESRVSREQUEST")
  (make-package "UAV_CLIENT::MODESRVSREQUEST"))
(unless (find-package "UAV_CLIENT::MODESRVSRESPONSE")
  (make-package "UAV_CLIENT::MODESRVSRESPONSE"))

(in-package "ROS")





(defclass uav_client::ModeSrvsRequest
  :super ros::object
  :slots (_cmd ))

(defmethod uav_client::ModeSrvsRequest
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

(defclass uav_client::ModeSrvsResponse
  :super ros::object
  :slots (_feedback ))

(defmethod uav_client::ModeSrvsResponse
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

(defclass uav_client::ModeSrvs
  :super ros::object
  :slots ())

(setf (get uav_client::ModeSrvs :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_client::ModeSrvs :datatype-) "uav_client/ModeSrvs")
(setf (get uav_client::ModeSrvs :request) uav_client::ModeSrvsRequest)
(setf (get uav_client::ModeSrvs :response) uav_client::ModeSrvsResponse)

(defmethod uav_client::ModeSrvsRequest
  (:response () (instance uav_client::ModeSrvsResponse :init)))

(setf (get uav_client::ModeSrvsRequest :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_client::ModeSrvsRequest :datatype-) "uav_client/ModeSrvsRequest")
(setf (get uav_client::ModeSrvsRequest :definition-)
      "int32 cmd
---
int32 feedback

")

(setf (get uav_client::ModeSrvsResponse :md5sum-) "4e20b2f68ee6c802f503418ca4f6f6af")
(setf (get uav_client::ModeSrvsResponse :datatype-) "uav_client/ModeSrvsResponse")
(setf (get uav_client::ModeSrvsResponse :definition-)
      "int32 cmd
---
int32 feedback

")



(provide :uav_client/ModeSrvs "4e20b2f68ee6c802f503418ca4f6f6af")


