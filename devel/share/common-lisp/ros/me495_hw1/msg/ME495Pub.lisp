; Auto-generated. Do not edit!


(cl:in-package me495_hw1-msg)


;//! \htmlinclude ME495Pub.msg.html

(cl:defclass <ME495Pub> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (configuration
    :reader configuration
    :initarg :configuration
    :type cl:float
    :initform 0.0))
)

(cl:defclass ME495Pub (<ME495Pub>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ME495Pub>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ME495Pub)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me495_hw1-msg:<ME495Pub> is deprecated: use me495_hw1-msg:ME495Pub instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ME495Pub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me495_hw1-msg:header-val is deprecated.  Use me495_hw1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <ME495Pub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me495_hw1-msg:time-val is deprecated.  Use me495_hw1-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'configuration-val :lambda-list '(m))
(cl:defmethod configuration-val ((m <ME495Pub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me495_hw1-msg:configuration-val is deprecated.  Use me495_hw1-msg:configuration instead.")
  (configuration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ME495Pub>) ostream)
  "Serializes a message object of type '<ME495Pub>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'configuration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ME495Pub>) istream)
  "Deserializes a message object of type '<ME495Pub>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'configuration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ME495Pub>)))
  "Returns string type for a message object of type '<ME495Pub>"
  "me495_hw1/ME495Pub")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ME495Pub)))
  "Returns string type for a message object of type 'ME495Pub"
  "me495_hw1/ME495Pub")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ME495Pub>)))
  "Returns md5sum for a message object of type '<ME495Pub>"
  "91983dfb08bae7741ea33f6281cab302")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ME495Pub)))
  "Returns md5sum for a message object of type 'ME495Pub"
  "91983dfb08bae7741ea33f6281cab302")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ME495Pub>)))
  "Returns full string definition for message of type '<ME495Pub>"
  (cl:format cl:nil "Header header~%float32 time~%float32 configuration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ME495Pub)))
  "Returns full string definition for message of type 'ME495Pub"
  (cl:format cl:nil "Header header~%float32 time~%float32 configuration~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ME495Pub>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ME495Pub>))
  "Converts a ROS message object to a list"
  (cl:list 'ME495Pub
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':configuration (configuration msg))
))
