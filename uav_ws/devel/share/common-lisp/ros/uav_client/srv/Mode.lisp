; Auto-generated. Do not edit!


(cl:in-package uav_client-srv)


;//! \htmlinclude Mode-request.msg.html

(cl:defclass <Mode-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass Mode-request (<Mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<Mode-request> is deprecated: use uav_client-srv:Mode-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <Mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:cmd-val is deprecated.  Use uav_client-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mode-request>) ostream)
  "Serializes a message object of type '<Mode-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mode-request>) istream)
  "Deserializes a message object of type '<Mode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mode-request>)))
  "Returns string type for a service object of type '<Mode-request>"
  "uav_client/ModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mode-request)))
  "Returns string type for a service object of type 'Mode-request"
  "uav_client/ModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mode-request>)))
  "Returns md5sum for a message object of type '<Mode-request>"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mode-request)))
  "Returns md5sum for a message object of type 'Mode-request"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mode-request>)))
  "Returns full string definition for message of type '<Mode-request>"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mode-request)))
  "Returns full string definition for message of type 'Mode-request"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mode-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Mode-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude Mode-response.msg.html

(cl:defclass <Mode-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:integer
    :initform 0))
)

(cl:defclass Mode-response (<Mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<Mode-response> is deprecated: use uav_client-srv:Mode-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <Mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:feedback-val is deprecated.  Use uav_client-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mode-response>) ostream)
  "Serializes a message object of type '<Mode-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mode-response>) istream)
  "Deserializes a message object of type '<Mode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mode-response>)))
  "Returns string type for a service object of type '<Mode-response>"
  "uav_client/ModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mode-response)))
  "Returns string type for a service object of type 'Mode-response"
  "uav_client/ModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mode-response>)))
  "Returns md5sum for a message object of type '<Mode-response>"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mode-response)))
  "Returns md5sum for a message object of type 'Mode-response"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mode-response>)))
  "Returns full string definition for message of type '<Mode-response>"
  (cl:format cl:nil "int32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mode-response)))
  "Returns full string definition for message of type 'Mode-response"
  (cl:format cl:nil "int32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mode-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Mode-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Mode)))
  'Mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Mode)))
  'Mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mode)))
  "Returns string type for a service object of type '<Mode>"
  "uav_client/Mode")