; Auto-generated. Do not edit!


(cl:in-package remote-msg)


;//! \htmlinclude dof.msg.html

(cl:defclass <dof> (roslisp-msg-protocol:ros-message)
  ((acc_x
    :reader acc_x
    :initarg :acc_x
    :type cl:integer
    :initform 0)
   (acc_y
    :reader acc_y
    :initarg :acc_y
    :type cl:integer
    :initform 0)
   (acc_z
    :reader acc_z
    :initarg :acc_z
    :type cl:integer
    :initform 0)
   (gyro_x
    :reader gyro_x
    :initarg :gyro_x
    :type cl:integer
    :initform 0)
   (gyro_y
    :reader gyro_y
    :initarg :gyro_y
    :type cl:integer
    :initform 0)
   (gyro_z
    :reader gyro_z
    :initarg :gyro_z
    :type cl:integer
    :initform 0))
)

(cl:defclass dof (<dof>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dof>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dof)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name remote-msg:<dof> is deprecated: use remote-msg:dof instead.")))

(cl:ensure-generic-function 'acc_x-val :lambda-list '(m))
(cl:defmethod acc_x-val ((m <dof>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-msg:acc_x-val is deprecated.  Use remote-msg:acc_x instead.")
  (acc_x m))

(cl:ensure-generic-function 'acc_y-val :lambda-list '(m))
(cl:defmethod acc_y-val ((m <dof>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-msg:acc_y-val is deprecated.  Use remote-msg:acc_y instead.")
  (acc_y m))

(cl:ensure-generic-function 'acc_z-val :lambda-list '(m))
(cl:defmethod acc_z-val ((m <dof>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-msg:acc_z-val is deprecated.  Use remote-msg:acc_z instead.")
  (acc_z m))

(cl:ensure-generic-function 'gyro_x-val :lambda-list '(m))
(cl:defmethod gyro_x-val ((m <dof>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-msg:gyro_x-val is deprecated.  Use remote-msg:gyro_x instead.")
  (gyro_x m))

(cl:ensure-generic-function 'gyro_y-val :lambda-list '(m))
(cl:defmethod gyro_y-val ((m <dof>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-msg:gyro_y-val is deprecated.  Use remote-msg:gyro_y instead.")
  (gyro_y m))

(cl:ensure-generic-function 'gyro_z-val :lambda-list '(m))
(cl:defmethod gyro_z-val ((m <dof>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader remote-msg:gyro_z-val is deprecated.  Use remote-msg:gyro_z instead.")
  (gyro_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dof>) ostream)
  "Serializes a message object of type '<dof>"
  (cl:let* ((signed (cl:slot-value msg 'acc_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'acc_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'acc_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyro_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyro_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gyro_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dof>) istream)
  "Deserializes a message object of type '<dof>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acc_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acc_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'acc_z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyro_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyro_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gyro_z) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dof>)))
  "Returns string type for a message object of type '<dof>"
  "remote/dof")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dof)))
  "Returns string type for a message object of type 'dof"
  "remote/dof")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dof>)))
  "Returns md5sum for a message object of type '<dof>"
  "adacf47aa28973950aae378f344b9c3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dof)))
  "Returns md5sum for a message object of type 'dof"
  "adacf47aa28973950aae378f344b9c3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dof>)))
  "Returns full string definition for message of type '<dof>"
  (cl:format cl:nil "int32 acc_x~%int32 acc_y~%int32 acc_z~%~%int32 gyro_x~%int32 gyro_y~%int32 gyro_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dof)))
  "Returns full string definition for message of type 'dof"
  (cl:format cl:nil "int32 acc_x~%int32 acc_y~%int32 acc_z~%~%int32 gyro_x~%int32 gyro_y~%int32 gyro_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dof>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dof>))
  "Converts a ROS message object to a list"
  (cl:list 'dof
    (cl:cons ':acc_x (acc_x msg))
    (cl:cons ':acc_y (acc_y msg))
    (cl:cons ':acc_z (acc_z msg))
    (cl:cons ':gyro_x (gyro_x msg))
    (cl:cons ':gyro_y (gyro_y msg))
    (cl:cons ':gyro_z (gyro_z msg))
))
