; Auto-generated. Do not edit!


(cl:in-package uav_client-srv)


;//! \htmlinclude UavSrvs-request.msg.html

(cl:defclass <UavSrvs-request> (roslisp-msg-protocol:ros-message)
  ((cmdEB
    :reader cmdEB
    :initarg :cmdEB
    :type cl:fixnum
    :initform 0)
   (cmdPV
    :reader cmdPV
    :initarg :cmdPV
    :type cl:fixnum
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
    :initform 0.0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UavSrvs-request (<UavSrvs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavSrvs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavSrvs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<UavSrvs-request> is deprecated: use uav_client-srv:UavSrvs-request instead.")))

(cl:ensure-generic-function 'cmdEB-val :lambda-list '(m))
(cl:defmethod cmdEB-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:cmdEB-val is deprecated.  Use uav_client-srv:cmdEB instead.")
  (cmdEB m))

(cl:ensure-generic-function 'cmdPV-val :lambda-list '(m))
(cl:defmethod cmdPV-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:cmdPV-val is deprecated.  Use uav_client-srv:cmdPV instead.")
  (cmdPV m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:x-val is deprecated.  Use uav_client-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:y-val is deprecated.  Use uav_client-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:z-val is deprecated.  Use uav_client-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:yaw-val is deprecated.  Use uav_client-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <UavSrvs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:mode-val is deprecated.  Use uav_client-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavSrvs-request>) ostream)
  "Serializes a message object of type '<UavSrvs-request>"
  (cl:let* ((signed (cl:slot-value msg 'cmdEB)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cmdPV)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
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
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavSrvs-request>) istream)
  "Deserializes a message object of type '<UavSrvs-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdEB) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmdPV) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavSrvs-request>)))
  "Returns string type for a service object of type '<UavSrvs-request>"
  "uav_client/UavSrvsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavSrvs-request)))
  "Returns string type for a service object of type 'UavSrvs-request"
  "uav_client/UavSrvsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavSrvs-request>)))
  "Returns md5sum for a message object of type '<UavSrvs-request>"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavSrvs-request)))
  "Returns md5sum for a message object of type 'UavSrvs-request"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavSrvs-request>)))
  "Returns full string definition for message of type '<UavSrvs-request>"
  (cl:format cl:nil "int8 cmdEB~%int8 cmdPV~%float32 x~%float32 y~%float32 z~%float32 yaw~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavSrvs-request)))
  "Returns full string definition for message of type 'UavSrvs-request"
  (cl:format cl:nil "int8 cmdEB~%int8 cmdPV~%float32 x~%float32 y~%float32 z~%float32 yaw~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavSrvs-request>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavSrvs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UavSrvs-request
    (cl:cons ':cmdEB (cmdEB msg))
    (cl:cons ':cmdPV (cmdPV msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude UavSrvs-response.msg.html

(cl:defclass <UavSrvs-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UavSrvs-response (<UavSrvs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavSrvs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavSrvs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_client-srv:<UavSrvs-response> is deprecated: use uav_client-srv:UavSrvs-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <UavSrvs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_client-srv:feedback-val is deprecated.  Use uav_client-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavSrvs-response>) ostream)
  "Serializes a message object of type '<UavSrvs-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavSrvs-response>) istream)
  "Deserializes a message object of type '<UavSrvs-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavSrvs-response>)))
  "Returns string type for a service object of type '<UavSrvs-response>"
  "uav_client/UavSrvsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavSrvs-response)))
  "Returns string type for a service object of type 'UavSrvs-response"
  "uav_client/UavSrvsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavSrvs-response>)))
  "Returns md5sum for a message object of type '<UavSrvs-response>"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavSrvs-response)))
  "Returns md5sum for a message object of type 'UavSrvs-response"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavSrvs-response>)))
  "Returns full string definition for message of type '<UavSrvs-response>"
  (cl:format cl:nil "int8 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavSrvs-response)))
  "Returns full string definition for message of type 'UavSrvs-response"
  (cl:format cl:nil "int8 feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavSrvs-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavSrvs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UavSrvs-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UavSrvs)))
  'UavSrvs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UavSrvs)))
  'UavSrvs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavSrvs)))
  "Returns string type for a service object of type '<UavSrvs>"
  "uav_client/UavSrvs")