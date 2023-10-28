; Auto-generated. Do not edit!


(cl:in-package uav_server-msg)


;//! \htmlinclude TopicMode.msg.html

(cl:defclass <TopicMode> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass TopicMode (<TopicMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_server-msg:<TopicMode> is deprecated: use uav_server-msg:TopicMode instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <TopicMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-msg:cmd-val is deprecated.  Use uav_server-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicMode>) ostream)
  "Serializes a message object of type '<TopicMode>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicMode>) istream)
  "Deserializes a message object of type '<TopicMode>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicMode>)))
  "Returns string type for a message object of type '<TopicMode>"
  "uav_server/TopicMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicMode)))
  "Returns string type for a message object of type 'TopicMode"
  "uav_server/TopicMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicMode>)))
  "Returns md5sum for a message object of type '<TopicMode>"
  "66990e73c7aab0c47ddcdc70f7fa5bd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicMode)))
  "Returns md5sum for a message object of type 'TopicMode"
  "66990e73c7aab0c47ddcdc70f7fa5bd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicMode>)))
  "Returns full string definition for message of type '<TopicMode>"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicMode)))
  "Returns full string definition for message of type 'TopicMode"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicMode>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicMode>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicMode
    (cl:cons ':cmd (cmd msg))
))
