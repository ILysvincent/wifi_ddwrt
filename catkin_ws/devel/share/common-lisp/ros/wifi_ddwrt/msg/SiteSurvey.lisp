; Auto-generated. Do not edit!


(cl:in-package wifi_ddwrt-msg)


;//! \htmlinclude SiteSurvey.msg.html

(cl:defclass <SiteSurvey> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (networks
    :reader networks
    :initarg :networks
    :type (cl:vector wifi_ddwrt-msg:Network)
   :initform (cl:make-array 0 :element-type 'wifi_ddwrt-msg:Network :initial-element (cl:make-instance 'wifi_ddwrt-msg:Network))))
)

(cl:defclass SiteSurvey (<SiteSurvey>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SiteSurvey>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SiteSurvey)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wifi_ddwrt-msg:<SiteSurvey> is deprecated: use wifi_ddwrt-msg:SiteSurvey instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SiteSurvey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wifi_ddwrt-msg:header-val is deprecated.  Use wifi_ddwrt-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'networks-val :lambda-list '(m))
(cl:defmethod networks-val ((m <SiteSurvey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wifi_ddwrt-msg:networks-val is deprecated.  Use wifi_ddwrt-msg:networks instead.")
  (networks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SiteSurvey>) ostream)
  "Serializes a message object of type '<SiteSurvey>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'networks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'networks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SiteSurvey>) istream)
  "Deserializes a message object of type '<SiteSurvey>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'networks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'networks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'wifi_ddwrt-msg:Network))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SiteSurvey>)))
  "Returns string type for a message object of type '<SiteSurvey>"
  "wifi_ddwrt/SiteSurvey")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SiteSurvey)))
  "Returns string type for a message object of type 'SiteSurvey"
  "wifi_ddwrt/SiteSurvey")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SiteSurvey>)))
  "Returns md5sum for a message object of type '<SiteSurvey>"
  "f1063b16bb121ef190ae5edfe09d94ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SiteSurvey)))
  "Returns md5sum for a message object of type 'SiteSurvey"
  "f1063b16bb121ef190ae5edfe09d94ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SiteSurvey>)))
  "Returns full string definition for message of type '<SiteSurvey>"
  (cl:format cl:nil "Header header~%Network[] networks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: wifi_ddwrt/Network~%string macattr~%string essid~%int32 channel~%int32 rssi~%int32 noise~%int32 beacon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SiteSurvey)))
  "Returns full string definition for message of type 'SiteSurvey"
  (cl:format cl:nil "Header header~%Network[] networks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: wifi_ddwrt/Network~%string macattr~%string essid~%int32 channel~%int32 rssi~%int32 noise~%int32 beacon~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SiteSurvey>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'networks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SiteSurvey>))
  "Converts a ROS message object to a list"
  (cl:list 'SiteSurvey
    (cl:cons ':header (header msg))
    (cl:cons ':networks (networks msg))
))
