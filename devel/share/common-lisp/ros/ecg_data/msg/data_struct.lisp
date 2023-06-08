; Auto-generated. Do not edit!


(cl:in-package ecg_data-msg)


;//! \htmlinclude data_struct.msg.html

(cl:defclass <data_struct> (roslisp-msg-protocol:ros-message)
  ((signal_type
    :reader signal_type
    :initarg :signal_type
    :type cl:string
    :initform "")
   (project_id
    :reader project_id
    :initarg :project_id
    :type cl:string
    :initform "")
   (user_id
    :reader user_id
    :initarg :user_id
    :type cl:string
    :initform "")
   (time
    :reader time
    :initarg :time
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass data_struct (<data_struct>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_struct>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_struct)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ecg_data-msg:<data_struct> is deprecated: use ecg_data-msg:data_struct instead.")))

(cl:ensure-generic-function 'signal_type-val :lambda-list '(m))
(cl:defmethod signal_type-val ((m <data_struct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecg_data-msg:signal_type-val is deprecated.  Use ecg_data-msg:signal_type instead.")
  (signal_type m))

(cl:ensure-generic-function 'project_id-val :lambda-list '(m))
(cl:defmethod project_id-val ((m <data_struct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecg_data-msg:project_id-val is deprecated.  Use ecg_data-msg:project_id instead.")
  (project_id m))

(cl:ensure-generic-function 'user_id-val :lambda-list '(m))
(cl:defmethod user_id-val ((m <data_struct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecg_data-msg:user_id-val is deprecated.  Use ecg_data-msg:user_id instead.")
  (user_id m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <data_struct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecg_data-msg:time-val is deprecated.  Use ecg_data-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <data_struct>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ecg_data-msg:data-val is deprecated.  Use ecg_data-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_struct>) ostream)
  "Serializes a message object of type '<data_struct>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'project_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'project_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'user_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'user_id))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time) (cl:floor (cl:slot-value msg 'time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_struct>) istream)
  "Deserializes a message object of type '<data_struct>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'project_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'project_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'user_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'user_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_struct>)))
  "Returns string type for a message object of type '<data_struct>"
  "ecg_data/data_struct")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_struct)))
  "Returns string type for a message object of type 'data_struct"
  "ecg_data/data_struct")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_struct>)))
  "Returns md5sum for a message object of type '<data_struct>"
  "bebbd51a7e427939fe0d843092aefc83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_struct)))
  "Returns md5sum for a message object of type 'data_struct"
  "bebbd51a7e427939fe0d843092aefc83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_struct>)))
  "Returns full string definition for message of type '<data_struct>"
  (cl:format cl:nil "string signal_type~%string project_id ~%string user_id~%time time ~%float64 data ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_struct)))
  "Returns full string definition for message of type 'data_struct"
  (cl:format cl:nil "string signal_type~%string project_id ~%string user_id~%time time ~%float64 data ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_struct>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'signal_type))
     4 (cl:length (cl:slot-value msg 'project_id))
     4 (cl:length (cl:slot-value msg 'user_id))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_struct>))
  "Converts a ROS message object to a list"
  (cl:list 'data_struct
    (cl:cons ':signal_type (signal_type msg))
    (cl:cons ':project_id (project_id msg))
    (cl:cons ':user_id (user_id msg))
    (cl:cons ':time (time msg))
    (cl:cons ':data (data msg))
))
