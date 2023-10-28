
(cl:in-package :asdf)

(defsystem "uav_server-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlCommand" :depends-on ("_package_ControlCommand"))
    (:file "_package_ControlCommand" :depends-on ("_package"))
    (:file "PositionReference" :depends-on ("_package_PositionReference"))
    (:file "_package_PositionReference" :depends-on ("_package"))
    (:file "TopicMode" :depends-on ("_package_TopicMode"))
    (:file "_package_TopicMode" :depends-on ("_package"))
    (:file "TopicMove" :depends-on ("_package_TopicMove"))
    (:file "_package_TopicMove" :depends-on ("_package"))
  ))