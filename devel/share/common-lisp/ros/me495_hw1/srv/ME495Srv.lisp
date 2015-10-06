; Auto-generated. Do not edit!


(cl:in-package me495_hw1-srv)


;//! \htmlinclude ME495Srv-request.msg.html

(cl:defclass <ME495Srv-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:integer
    :initform 0))
)

(cl:defclass ME495Srv-request (<ME495Srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ME495Srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ME495Srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me495_hw1-srv:<ME495Srv-request> is deprecated: use me495_hw1-srv:ME495Srv-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <ME495Srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me495_hw1-srv:input-val is deprecated.  Use me495_hw1-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ME495Srv-request>) ostream)
  "Serializes a message object of type '<ME495Srv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'input)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'input)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ME495Srv-request>) istream)
  "Deserializes a message object of type '<ME495Srv-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'input)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'input)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ME495Srv-request>)))
  "Returns string type for a service object of type '<ME495Srv-request>"
  "me495_hw1/ME495SrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ME495Srv-request)))
  "Returns string type for a service object of type 'ME495Srv-request"
  "me495_hw1/ME495SrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ME495Srv-request>)))
  "Returns md5sum for a message object of type '<ME495Srv-request>"
  "32801ee1a02c70a4c37e1dd07ac2075b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ME495Srv-request)))
  "Returns md5sum for a message object of type 'ME495Srv-request"
  "32801ee1a02c70a4c37e1dd07ac2075b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ME495Srv-request>)))
  "Returns full string definition for message of type '<ME495Srv-request>"
  (cl:format cl:nil "uint32 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ME495Srv-request)))
  "Returns full string definition for message of type 'ME495Srv-request"
  (cl:format cl:nil "uint32 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ME495Srv-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ME495Srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ME495Srv-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude ME495Srv-response.msg.html

(cl:defclass <ME495Srv-response> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ME495Srv-response (<ME495Srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ME495Srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ME495Srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name me495_hw1-srv:<ME495Srv-response> is deprecated: use me495_hw1-srv:ME495Srv-response instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <ME495Srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader me495_hw1-srv:output-val is deprecated.  Use me495_hw1-srv:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ME495Srv-response>) ostream)
  "Serializes a message object of type '<ME495Srv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ME495Srv-response>) istream)
  "Deserializes a message object of type '<ME495Srv-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ME495Srv-response>)))
  "Returns string type for a service object of type '<ME495Srv-response>"
  "me495_hw1/ME495SrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ME495Srv-response)))
  "Returns string type for a service object of type 'ME495Srv-response"
  "me495_hw1/ME495SrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ME495Srv-response>)))
  "Returns md5sum for a message object of type '<ME495Srv-response>"
  "32801ee1a02c70a4c37e1dd07ac2075b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ME495Srv-response)))
  "Returns md5sum for a message object of type 'ME495Srv-response"
  "32801ee1a02c70a4c37e1dd07ac2075b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ME495Srv-response>)))
  "Returns full string definition for message of type '<ME495Srv-response>"
  (cl:format cl:nil "uint8 output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ME495Srv-response)))
  "Returns full string definition for message of type 'ME495Srv-response"
  (cl:format cl:nil "uint8 output~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ME495Srv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ME495Srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ME495Srv-response
    (cl:cons ':output (output msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ME495Srv)))
  'ME495Srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ME495Srv)))
  'ME495Srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ME495Srv)))
  "Returns string type for a service object of type '<ME495Srv>"
  "me495_hw1/ME495Srv")