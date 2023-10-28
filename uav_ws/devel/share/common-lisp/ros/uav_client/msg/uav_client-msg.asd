
(cl:in-package :asdf)

(defsystem "uav_client-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveMsgs" :depends-on ("_package_MoveMsgs"))
    (:file "_package_MoveMsgs" :depends-on ("_package"))
  ))