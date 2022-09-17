; Auto-generated. Do not edit!


(cl:in-package my_project_msgs-msg)


;//! \htmlinclude CounterHistory.msg.html

(cl:defclass <CounterHistory> (roslisp-msg-protocol:ros-message)
  ((current_value
    :reader current_value
    :initarg :current_value
    :type cl:float
    :initform 0.0)
   (last_value
    :reader last_value
    :initarg :last_value
    :type cl:float
    :initform 0.0)
   (cycles
    :reader cycles
    :initarg :cycles
    :type cl:integer
    :initform 0))
)

(cl:defclass CounterHistory (<CounterHistory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CounterHistory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CounterHistory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_project_msgs-msg:<CounterHistory> is deprecated: use my_project_msgs-msg:CounterHistory instead.")))

(cl:ensure-generic-function 'current_value-val :lambda-list '(m))
(cl:defmethod current_value-val ((m <CounterHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_project_msgs-msg:current_value-val is deprecated.  Use my_project_msgs-msg:current_value instead.")
  (current_value m))

(cl:ensure-generic-function 'last_value-val :lambda-list '(m))
(cl:defmethod last_value-val ((m <CounterHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_project_msgs-msg:last_value-val is deprecated.  Use my_project_msgs-msg:last_value instead.")
  (last_value m))

(cl:ensure-generic-function 'cycles-val :lambda-list '(m))
(cl:defmethod cycles-val ((m <CounterHistory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_project_msgs-msg:cycles-val is deprecated.  Use my_project_msgs-msg:cycles instead.")
  (cycles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CounterHistory>) ostream)
  "Serializes a message object of type '<CounterHistory>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'cycles)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CounterHistory>) istream)
  "Deserializes a message object of type '<CounterHistory>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cycles) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CounterHistory>)))
  "Returns string type for a message object of type '<CounterHistory>"
  "my_project_msgs/CounterHistory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CounterHistory)))
  "Returns string type for a message object of type 'CounterHistory"
  "my_project_msgs/CounterHistory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CounterHistory>)))
  "Returns md5sum for a message object of type '<CounterHistory>"
  "56341dd3fc54a9e6cbc911af5bca695f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CounterHistory)))
  "Returns md5sum for a message object of type 'CounterHistory"
  "56341dd3fc54a9e6cbc911af5bca695f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CounterHistory>)))
  "Returns full string definition for message of type '<CounterHistory>"
  (cl:format cl:nil "float64 current_value~%float64 last_value~%int64 cycles~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CounterHistory)))
  "Returns full string definition for message of type 'CounterHistory"
  (cl:format cl:nil "float64 current_value~%float64 last_value~%int64 cycles~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CounterHistory>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CounterHistory>))
  "Converts a ROS message object to a list"
  (cl:list 'CounterHistory
    (cl:cons ':current_value (current_value msg))
    (cl:cons ':last_value (last_value msg))
    (cl:cons ':cycles (cycles msg))
))
