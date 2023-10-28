
(cl:in-package :asdf)

(defsystem "uav_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Mode" :depends-on ("_package_Mode"))
    (:file "_package_Mode" :depends-on ("_package"))
    (:file "Move" :depends-on ("_package_Move"))
    (:file "_package_Move" :depends-on ("_package"))
    (:file "UavGesture" :depends-on ("_package_UavGesture"))
    (:file "_package_UavGesture" :depends-on ("_package"))
  ))