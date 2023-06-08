;; Auto-generated. Do not edit!


(when (boundp 'ecg_data::data_struct)
  (if (not (find-package "ECG_DATA"))
    (make-package "ECG_DATA"))
  (shadow 'data_struct (find-package "ECG_DATA")))
(unless (find-package "ECG_DATA::DATA_STRUCT")
  (make-package "ECG_DATA::DATA_STRUCT"))

(in-package "ROS")
;;//! \htmlinclude data_struct.msg.html


(defclass ecg_data::data_struct
  :super ros::object
  :slots (_signal_type _project_id _user_id _time _data ))

(defmethod ecg_data::data_struct
  (:init
   (&key
    ((:signal_type __signal_type) "")
    ((:project_id __project_id) "")
    ((:user_id __user_id) "")
    ((:time __time) (instance ros::time :init))
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _signal_type (string __signal_type))
   (setq _project_id (string __project_id))
   (setq _user_id (string __user_id))
   (setq _time __time)
   (setq _data (float __data))
   self)
  (:signal_type
   (&optional __signal_type)
   (if __signal_type (setq _signal_type __signal_type)) _signal_type)
  (:project_id
   (&optional __project_id)
   (if __project_id (setq _project_id __project_id)) _project_id)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _signal_type
    4 (length _signal_type)
    ;; string _project_id
    4 (length _project_id)
    ;; string _user_id
    4 (length _user_id)
    ;; time _time
    8
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _signal_type
       (write-long (length _signal_type) s) (princ _signal_type s)
     ;; string _project_id
       (write-long (length _project_id) s) (princ _project_id s)
     ;; string _user_id
       (write-long (length _user_id) s) (princ _user_id s)
     ;; time _time
       (write-long (send _time :sec) s) (write-long (send _time :nsec) s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _signal_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _project_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _project_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _time
     (send _time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ecg_data::data_struct :md5sum-) "bebbd51a7e427939fe0d843092aefc83")
(setf (get ecg_data::data_struct :datatype-) "ecg_data/data_struct")
(setf (get ecg_data::data_struct :definition-)
      "string signal_type
string project_id 
string user_id
time time 
float64 data 

")



(provide :ecg_data/data_struct "bebbd51a7e427939fe0d843092aefc83")


