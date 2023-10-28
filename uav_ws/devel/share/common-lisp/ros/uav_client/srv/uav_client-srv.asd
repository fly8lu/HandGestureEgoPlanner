
(cl:in-package :asdf)

(defsystem "uav_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ModeSrvs" :depends-on ("_package_ModeSrvs"))
    (:file "_package_ModeSrvs" :depends-on ("_package"))
    (:file "MoveSrvs" :depends-on ("_package_MoveSrvs"))
    (:file "_package_MoveSrvs" :depends-on ("_package"))
    (:file "UavSrvs" :depends-on ("_package_UavSrvs"))
    (:file "_package_UavSrvs" :depends-on ("_package"))
  ))