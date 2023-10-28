;; Auto-generated. Do not edit!


(when (boundp 'uav_client::MoveMsgs)
  (if (not (find-package "UAV_CLIENT"))
    (make-package "UAV_CLIENT"))
  (shadow 'MoveMsgs (find-package "UAV_CLIENT")))
(unless (find-package "UAV_CLIENT::MOVEMSGS")
  (make-package "UAV_CLIENT::MOVEMSGS"))

(in-package "ROS")
;;//! \htmlinclude MoveMsgs.msg.html


(defclass uav_client::MoveMsgs
  :super ros::object
  :slots (_mode ))

(defmethod uav_client::MoveMsgs
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get uav_client::MoveMsgs :md5sum-) "ff63f6ea3c3e9b7504b2cb3ee0a09d92")
(setf (get uav_client::MoveMsgs :datatype-) "uav_client/MoveMsgs")
(setf (get uav_client::MoveMsgs :definition-)
      "int32 mode
")



(provide :uav_client/MoveMsgs "ff63f6ea3c3e9b7504b2cb3ee0a09d92")


