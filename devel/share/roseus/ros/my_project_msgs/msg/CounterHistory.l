;; Auto-generated. Do not edit!


(when (boundp 'my_project_msgs::CounterHistory)
  (if (not (find-package "MY_PROJECT_MSGS"))
    (make-package "MY_PROJECT_MSGS"))
  (shadow 'CounterHistory (find-package "MY_PROJECT_MSGS")))
(unless (find-package "MY_PROJECT_MSGS::COUNTERHISTORY")
  (make-package "MY_PROJECT_MSGS::COUNTERHISTORY"))

(in-package "ROS")
;;//! \htmlinclude CounterHistory.msg.html


(defclass my_project_msgs::CounterHistory
  :super ros::object
  :slots (_current_value _last_value _cycles ))

(defmethod my_project_msgs::CounterHistory
  (:init
   (&key
    ((:current_value __current_value) 0.0)
    ((:last_value __last_value) 0.0)
    ((:cycles __cycles) 0)
    )
   (send-super :init)
   (setq _current_value (float __current_value))
   (setq _last_value (float __last_value))
   (setq _cycles (round __cycles))
   self)
  (:current_value
   (&optional __current_value)
   (if __current_value (setq _current_value __current_value)) _current_value)
  (:last_value
   (&optional __last_value)
   (if __last_value (setq _last_value __last_value)) _last_value)
  (:cycles
   (&optional __cycles)
   (if __cycles (setq _cycles __cycles)) _cycles)
  (:serialization-length
   ()
   (+
    ;; float64 _current_value
    8
    ;; float64 _last_value
    8
    ;; int64 _cycles
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _current_value
       (sys::poke _current_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _last_value
       (sys::poke _last_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _cycles
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cycles (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cycles) (= (length (_cycles . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cycles . bv) 0) 0) s)
              (write-long (ash (elt (_cycles . bv) 1) -1) s))
             ((and (class _cycles) (= (length (_cycles . bv)) 1)) ;; big1
              (write-long (elt (_cycles . bv) 0) s)
              (write-long (if (>= _cycles 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cycles s)(write-long (if (>= _cycles 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _current_value
     (setq _current_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _last_value
     (setq _last_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _cycles
#+(or :alpha :irix6 :x86_64)
      (setf _cycles (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cycles (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get my_project_msgs::CounterHistory :md5sum-) "56341dd3fc54a9e6cbc911af5bca695f")
(setf (get my_project_msgs::CounterHistory :datatype-) "my_project_msgs/CounterHistory")
(setf (get my_project_msgs::CounterHistory :definition-)
      "float64 current_value
float64 last_value
int64 cycles
")



(provide :my_project_msgs/CounterHistory "56341dd3fc54a9e6cbc911af5bca695f")


