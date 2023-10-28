; Auto-generated. Do not edit!


(cl:in-package uav_client-srv)


;//! \htmlinclude MoveSrvs-request.msg.html

(cl:defclass <MoveSrvs-request> (roslisp-msg-protocol:ros-message)
  ((cmdEB
    :reader cmdEB
    :initarg :cmdEB
    :type cl:integer
    :initform 0)
   (cmdPV
    :reader cmdPV
    :initarg :cmdPV
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass MoveSrvs-request (<MoveSrvs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveSrvs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveSrvs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<MoveSrvs-request> is deprecated: use uav_client-srv:MoveSrvs-request instead.")))

(cl:ensure-generic-function 'cmdEB-val :lambda-list '(m))
(cl:defmethod cmdEB-val ((m <MoveSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:cmdEB-val is deprecated.  Use uav_client-srv:cmdEB instead.")
  (cmdEB m))

(cl:ensure-generic-function 'cmdPV-val :lambda-list '(m))
(cl:defmethod cmdPV-val ((m <MoveSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:cmdPV-val is deprecated.  Use uav_client-srv:cmdPV instead.")
  (cmdPV m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <MoveSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:x-val is deprecated.  Use uav_client-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <MoveSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:y-val is deprecated.  Use uav_client-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <MoveSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:z-val is deprecated.  Use uav_client-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <MoveSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:yaw-val is deprecated.  Use uav_client-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveSrvs-request>) ostream)
  "Serializes a message object of type '<MoveSrvs-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmdEB)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cmdPV)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveSrvs-request>) istream)
  "Deserializes a message object of type '<MoveSrvs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdEB) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdPV) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveSrvs-request>)))
  "Returns string type for a service object of type '<MoveSrvs-request>"
  "uav_client/MoveSrvsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveSrvs-request)))
  "Returns string type for a service object of type 'MoveSrvs-request"
  "uav_client/MoveSrvsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveSrvs-request>)))
  "Returns md5sum for a message object of type '<MoveSrvs-request>"
  "cecb58d04127b4205e6e2be03ba9e46a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveSrvs-request)))
  "Returns md5sum for a message object of type 'MoveSrvs-request"
  "cecb58d04127b4205e6e2be03ba9e46a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveSrvs-request>)))
  "Returns full string definition for message of type '<MoveSrvs-request>"
  (cl:format cl:nil "int32 cmdEB~%int32 cmdPV~%float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveSrvs-request)))
  "Returns full string definition for message of type 'MoveSrvs-request"
  (cl:format cl:nil "int32 cmdEB~%int32 cmdPV~%float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveSrvs-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveSrvs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveSrvs-request
    (cl:cons ':cmdEB (cmdEB msg))
    (cl:cons ':cmdPV (cmdPV msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude MoveSrvs-response.msg.html

(cl:defclass <MoveSrvs-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveSrvs-response (<MoveSrvs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveSrvs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveSrvs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<MoveSrvs-response> is deprecated: use uav_client-srv:MoveSrvs-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <MoveSrvs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:feedback-val is deprecated.  Use uav_client-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveSrvs-response>) ostream)
  "Serializes a message object of type '<MoveSrvs-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveSrvs-response>) istream)
  "Deserializes a message object of type '<MoveSrvs-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveSrvs-response>)))
  "Returns string type for a service object of type '<MoveSrvs-response>"
  "uav_client/MoveSrvsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveSrvs-response)))
  "Returns string type for a service object of type 'MoveSrvs-response"
  "uav_client/MoveSrvsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveSrvs-response>)))
  "Returns md5sum for a message object of type '<MoveSrvs-response>"
  "cecb58d04127b4205e6e2be03ba9e46a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveSrvs-response)))
  "Returns md5sum for a message object of type 'MoveSrvs-response"
  "cecb58d04127b4205e6e2be03ba9e46a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveSrvs-response>)))
  "Returns full string definition for message of type '<MoveSrvs-response>"
  (cl:format cl:nil "int32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveSrvs-response)))
  "Returns full string definition for message of type 'MoveSrvs-response"
  (cl:format cl:nil "int32 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveSrvs-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveSrvs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveSrvs-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveSrvs)))
  'MoveSrvs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveSrvs)))
  'MoveSrvs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveSrvs)))
  "Returns string type for a service object of type '<MoveSrvs>"
  "uav_client/MoveSrvs")