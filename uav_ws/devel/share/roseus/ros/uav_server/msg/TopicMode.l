;; Auto-generated. Do not edit!


(when (boundp 'uav_server::TopicMode)
  (if (not (find-package "UAV_SERVER"))
    (make-package "UAV_SERVER"))
  (shadow 'TopicMode (find-package "UAV_SERVER")))
(unless (find-package "UAV_SERVER::TOPICMODE")
  (make-package "UAV_SERVER::TOPICMODE"))

(in-package "ROS")
;;//! \htmlinclude TopicMode.msg.html


(defclass uav_server::TopicMode
  :super ros::object
  :slots (_cmd ))

(defmethod uav_server::TopicMode
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

(setf (get uav_server::TopicMode :md5sum-) "66990e73c7aab0c47ddcdc70f7fa5bd0")
(setf (get uav_server::TopicMode :datatype-) "uav_server/TopicMode")
(setf (get uav_server::TopicMode :definition-)
      "int32 cmd

")



(provide :uav_server/TopicMode "66990e73c7aab0c47ddcdc70f7fa5bd0")


