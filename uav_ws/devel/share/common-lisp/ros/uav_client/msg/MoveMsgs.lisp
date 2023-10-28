; Auto-generated. Do not edit!


(cl:in-package uav_client-msg)


;//! \htmlinclude MoveMsgs.msg.html

(cl:defclass <MoveMsgs> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveMsgs (<MoveMsgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveMsgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveMsgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-msg:<MoveMsgs> is deprecated: use uav_client-msg:MoveMsgs instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MoveMsgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-msg:mode-val is deprecated.  Use uav_client-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveMsgs>) ostream)
  "Serializes a message object of type '<MoveMsgs>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveMsgs>) istream)
  "Deserializes a message object of type '<MoveMsgs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveMsgs>)))
  "Returns string type for a message object of type '<MoveMsgs>"
  "uav_client/MoveMsgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveMsgs)))
  "Returns string type for a message object of type 'MoveMsgs"
  "uav_client/MoveMsgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveMsgs>)))
  "Returns md5sum for a message object of type '<MoveMsgs>"
  "ff63f6ea3c3e9b7504b2cb3ee0a09d92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveMsgs)))
  "Returns md5sum for a message object of type 'MoveMsgs"
  "ff63f6ea3c3e9b7504b2cb3ee0a09d92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveMsgs>)))
  "Returns full string definition for message of type '<MoveMsgs>"
  (cl:format cl:nil "int32 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveMsgs)))
  "Returns full string definition for message of type 'MoveMsgs"
  (cl:format cl:nil "int32 mode~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveMsgs>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveMsgs>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveMsgs
    (cl:cons ':mode (mode msg))
))
