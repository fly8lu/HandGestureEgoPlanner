; Auto-generated. Do not edit!


(cl:in-package uav_client-srv)


;//! \htmlinclude ModeSrvs-request.msg.html

(cl:defclass <ModeSrvs-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass ModeSrvs-request (<ModeSrvs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeSrvs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeSrvs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<ModeSrvs-request> is deprecated: use uav_client-srv:ModeSrvs-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ModeSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:cmd-val is deprecated.  Use uav_client-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeSrvs-request>) ostream)
  "Serializes a message object of type '<ModeSrvs-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeSrvs-request>) istream)
  "Deserializes a message object of type '<ModeSrvs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeSrvs-request>)))
  "Returns string type for a service object of type '<ModeSrvs-request>"
  "uav_client/ModeSrvsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeSrvs-request)))
  "Returns string type for a service object of type 'ModeSrvs-request"
  "uav_client/ModeSrvsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeSrvs-request>)))
  "Returns md5sum for a message object of type '<ModeSrvs-request>"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeSrvs-request)))
  "Returns md5sum for a message object of type 'ModeSrvs-request"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeSrvs-request>)))
  "Returns full string definition for message of type '<ModeSrvs-request>"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeSrvs-request)))
  "Returns full string definition for message of type 'ModeSrvs-request"
  (cl:format cl:nil "int32 cmd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeSrvs-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeSrvs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeSrvs-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude ModeSrvs-response.msg.html

(cl:defclass <ModeSrvs-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:integer
    :initform 0))
)

(cl:defclass ModeSrvs-response (<ModeSrvs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModeSrvs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModeSrvs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<ModeSrvs-response> is deprecated: use uav_client-srv:ModeSrvs-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <ModeSrvs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:feedback-val is deprecated.  Use uav_client-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModeSrvs-response>) ostream)
  "Serializes a message object of type '<ModeSrvs-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModeSrvs-response>) istream)
  "Deserializes a message object of type '<ModeSrvs-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModeSrvs-response>)))
  "Returns string type for a service object of type '<ModeSrvs-response>"
  "uav_client/ModeSrvsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeSrvs-response)))
  "Returns string type for a service object of type 'ModeSrvs-response"
  "uav_client/ModeSrvsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModeSrvs-response>)))
  "Returns md5sum for a message object of type '<ModeSrvs-response>"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModeSrvs-response)))
  "Returns md5sum for a message object of type 'ModeSrvs-response"
  "4e20b2f68ee6c802f503418ca4f6f6af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModeSrvs-response>)))
  "Returns full string definition for message of type '<ModeSrvs-response>"
  (cl:format cl:nil "int32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModeSrvs-response)))
  "Returns full string definition for message of type 'ModeSrvs-response"
  (cl:format cl:nil "int32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModeSrvs-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModeSrvs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModeSrvs-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModeSrvs)))
  'ModeSrvs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModeSrvs)))
  'ModeSrvs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModeSrvs)))
  "Returns string type for a service object of type '<ModeSrvs>"
  "uav_client/ModeSrvs")