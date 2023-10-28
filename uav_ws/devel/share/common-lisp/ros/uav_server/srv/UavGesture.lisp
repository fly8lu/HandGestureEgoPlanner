; Auto-generated. Do not edit!


(cl:in-package uav_server-srv)


;//! \htmlinclude UavGesture-request.msg.html

(cl:defclass <UavGesture-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UavGesture-request (<UavGesture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavGesture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavGesture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_server-srv:<UavGesture-request> is deprecated: use uav_server-srv:UavGesture-request instead.")))

(cl:ensure-generic-function 'cmdEB-val :lambda-list '(m))
(cl:defmethod cmdEB-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:cmdEB-val is deprecated.  Use uav_server-srv:cmdEB instead.")
  (cmdEB m))

(cl:ensure-generic-function 'cmdPV-val :lambda-list '(m))
(cl:defmethod cmdPV-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:cmdPV-val is deprecated.  Use uav_server-srv:cmdPV instead.")
  (cmdPV m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:x-val is deprecated.  Use uav_server-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:y-val is deprecated.  Use uav_server-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:z-val is deprecated.  Use uav_server-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:yaw-val is deprecated.  Use uav_server-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <UavGesture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:mode-val is deprecated.  Use uav_server-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavGesture-request>) ostream)
  "Serializes a message object of type '<UavGesture-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavGesture-request>) istream)
  "Deserializes a message object of type '<UavGesture-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavGesture-request>)))
  "Returns string type for a service object of type '<UavGesture-request>"
  "uav_server/UavGestureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavGesture-request)))
  "Returns string type for a service object of type 'UavGesture-request"
  "uav_server/UavGestureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavGesture-request>)))
  "Returns md5sum for a message object of type '<UavGesture-request>"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavGesture-request)))
  "Returns md5sum for a message object of type 'UavGesture-request"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavGesture-request>)))
  "Returns full string definition for message of type '<UavGesture-request>"
  (cl:format cl:nil "int8 cmdEB~%int8 cmdPV~%float32 x~%float32 y~%float32 z~%float32 yaw~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavGesture-request)))
  "Returns full string definition for message of type 'UavGesture-request"
  (cl:format cl:nil "int8 cmdEB~%int8 cmdPV~%float32 x~%float32 y~%float32 z~%float32 yaw~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavGesture-request>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavGesture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UavGesture-request
    (cl:cons ':cmdEB (cmdEB msg))
    (cl:cons ':cmdPV (cmdPV msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude UavGesture-response.msg.html

(cl:defclass <UavGesture-response> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UavGesture-response (<UavGesture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UavGesture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UavGesture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uav_server-srv:<UavGesture-response> is deprecated: use uav_server-srv:UavGesture-response instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <UavGesture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uav_server-srv:feedback-val is deprecated.  Use uav_server-srv:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UavGesture-response>) ostream)
  "Serializes a message object of type '<UavGesture-response>"
  (cl:let* ((signed (cl:slot-value msg 'feedback)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UavGesture-response>) istream)
  "Deserializes a message object of type '<UavGesture-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'feedback) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UavGesture-response>)))
  "Returns string type for a service object of type '<UavGesture-response>"
  "uav_server/UavGestureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavGesture-response)))
  "Returns string type for a service object of type 'UavGesture-response"
  "uav_server/UavGestureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UavGesture-response>)))
  "Returns md5sum for a message object of type '<UavGesture-response>"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UavGesture-response)))
  "Returns md5sum for a message object of type 'UavGesture-response"
  "cf0091775db056556bcbf0c6e550c71f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UavGesture-response>)))
  "Returns full string definition for message of type '<UavGesture-response>"
  (cl:format cl:nil "int8 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UavGesture-response)))
  "Returns full string definition for message of type 'UavGesture-response"
  (cl:format cl:nil "int8 feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UavGesture-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UavGesture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UavGesture-response
    (cl:cons ':feedback (feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UavGesture)))
  'UavGesture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UavGesture)))
  'UavGesture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UavGesture)))
  "Returns string type for a service object of type '<UavGesture>"
  "uav_server/UavGesture")