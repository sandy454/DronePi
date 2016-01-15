; Auto-generated. Do not edit!


(cl:in-package remote-srv)


;//! \htmlinclude basic-request.msg.html

(cl:defclass <basic-request> (roslisp-msg-protocol:ros-message)
  ((pos_x
    :reader pos_x
    :initarg :pos_x
    :type cl:integer
    :initform 0)
   (pos_y
    :reader pos_y
    :initarg :pos_y
    :type cl:integer
    :initform 0)
   (pos_z
    :reader pos_z
    :initarg :pos_z
    :type cl:integer
    :initform 0))
)

(cl:defclass basic-request (<basic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <basic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'basic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name remote-srv:<basic-request> is deprecated: use remote-srv:basic-request instead.")))

(cl:ensure-generic-function 'pos_x-val :lambda-list '(m))
(cl:defmethod pos_x-val ((m <basic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-srv:pos_x-val is deprecated.  Use remote-srv:pos_x instead.")
  (pos_x m))

(cl:ensure-generic-function 'pos_y-val :lambda-list '(m))
(cl:defmethod pos_y-val ((m <basic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-srv:pos_y-val is deprecated.  Use remote-srv:pos_y instead.")
  (pos_y m))

(cl:ensure-generic-function 'pos_z-val :lambda-list '(m))
(cl:defmethod pos_z-val ((m <basic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-srv:pos_z-val is deprecated.  Use remote-srv:pos_z instead.")
  (pos_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <basic-request>) ostream)
  "Serializes a message object of type '<basic-request>"
  (cl:let* ((signed (cl:slot-value msg 'pos_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pos_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <basic-request>) istream)
  "Deserializes a message object of type '<basic-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pos_z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<basic-request>)))
  "Returns string type for a service object of type '<basic-request>"
  "remote/basicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'basic-request)))
  "Returns string type for a service object of type 'basic-request"
  "remote/basicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<basic-request>)))
  "Returns md5sum for a message object of type '<basic-request>"
  "bb80ece2e91b33ae008c863d1e34b34c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'basic-request)))
  "Returns md5sum for a message object of type 'basic-request"
  "bb80ece2e91b33ae008c863d1e34b34c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<basic-request>)))
  "Returns full string definition for message of type '<basic-request>"
  (cl:format cl:nil "int32 pos_x~%int32 pos_y~%int32 pos_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'basic-request)))
  "Returns full string definition for message of type 'basic-request"
  (cl:format cl:nil "int32 pos_x~%int32 pos_y~%int32 pos_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <basic-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <basic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'basic-request
    (cl:cons ':pos_x (pos_x msg))
    (cl:cons ':pos_y (pos_y msg))
    (cl:cons ':pos_z (pos_z msg))
))
;//! \htmlinclude basic-response.msg.html

(cl:defclass <basic-response> (roslisp-msg-protocol:ros-message)
  ((fb_x
    :reader fb_x
    :initarg :fb_x
    :type cl:integer
    :initform 0)
   (fd_y
    :reader fd_y
    :initarg :fd_y
    :type cl:integer
    :initform 0)
   (fd_z
    :reader fd_z
    :initarg :fd_z
    :type cl:integer
    :initform 0))
)

(cl:defclass basic-response (<basic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <basic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'basic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name remote-srv:<basic-response> is deprecated: use remote-srv:basic-response instead.")))

(cl:ensure-generic-function 'fb_x-val :lambda-list '(m))
(cl:defmethod fb_x-val ((m <basic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-srv:fb_x-val is deprecated.  Use remote-srv:fb_x instead.")
  (fb_x m))

(cl:ensure-generic-function 'fd_y-val :lambda-list '(m))
(cl:defmethod fd_y-val ((m <basic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-srv:fd_y-val is deprecated.  Use remote-srv:fd_y instead.")
  (fd_y m))

(cl:ensure-generic-function 'fd_z-val :lambda-list '(m))
(cl:defmethod fd_z-val ((m <basic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-srv:fd_z-val is deprecated.  Use remote-srv:fd_z instead.")
  (fd_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <basic-response>) ostream)
  "Serializes a message object of type '<basic-response>"
  (cl:let* ((signed (cl:slot-value msg 'fb_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fd_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fd_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <basic-response>) istream)
  "Deserializes a message object of type '<basic-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fb_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fd_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fd_z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<basic-response>)))
  "Returns string type for a service object of type '<basic-response>"
  "remote/basicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'basic-response)))
  "Returns string type for a service object of type 'basic-response"
  "remote/basicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<basic-response>)))
  "Returns md5sum for a message object of type '<basic-response>"
  "bb80ece2e91b33ae008c863d1e34b34c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'basic-response)))
  "Returns md5sum for a message object of type 'basic-response"
  "bb80ece2e91b33ae008c863d1e34b34c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<basic-response>)))
  "Returns full string definition for message of type '<basic-response>"
  (cl:format cl:nil "int32 fb_x~%int32 fd_y~%int32 fd_z~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'basic-response)))
  "Returns full string definition for message of type 'basic-response"
  (cl:format cl:nil "int32 fb_x~%int32 fd_y~%int32 fd_z~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <basic-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <basic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'basic-response
    (cl:cons ':fb_x (fb_x msg))
    (cl:cons ':fd_y (fd_y msg))
    (cl:cons ':fd_z (fd_z msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'basic)))
  'basic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'basic)))
  'basic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'basic)))
  "Returns string type for a service object of type '<basic>"
  "remote/basic")