;; Auto-generated. Do not edit!


(when (boundp 'remote::basic)
  (if (not (find-package "REMOTE"))
    (make-package "REMOTE"))
  (shadow 'basic (find-package "REMOTE")))
(unless (find-package "REMOTE::BASIC")
  (make-package "REMOTE::BASIC"))
(unless (find-package "REMOTE::BASICREQUEST")
  (make-package "REMOTE::BASICREQUEST"))
(unless (find-package "REMOTE::BASICRESPONSE")
  (make-package "REMOTE::BASICRESPONSE"))

(in-package "ROS")





(defclass remote::basicRequest
  :super ros::object
  :slots (_pos_x _pos_y _pos_z ))

(defmethod remote::basicRequest
  (:init
   (&key
    ((:pos_x __pos_x) 0)
    ((:pos_y __pos_y) 0)
    ((:pos_z __pos_z) 0)
    )
   (send-super :init)
   (setq _pos_x (round __pos_x))
   (setq _pos_y (round __pos_y))
   (setq _pos_z (round __pos_z))
   self)
  (:pos_x
   (&optional __pos_x)
   (if __pos_x (setq _pos_x __pos_x)) _pos_x)
  (:pos_y
   (&optional __pos_y)
   (if __pos_y (setq _pos_y __pos_y)) _pos_y)
  (:pos_z
   (&optional __pos_z)
   (if __pos_z (setq _pos_z __pos_z)) _pos_z)
  (:serialization-length
   ()
   (+
    ;; int32 _pos_x
    4
    ;; int32 _pos_y
    4
    ;; int32 _pos_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pos_x
       (write-long _pos_x s)
     ;; int32 _pos_y
       (write-long _pos_y s)
     ;; int32 _pos_z
       (write-long _pos_z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pos_x
     (setq _pos_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos_y
     (setq _pos_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pos_z
     (setq _pos_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass remote::basicResponse
  :super ros::object
  :slots (_fb_x _fd_y _fd_z ))

(defmethod remote::basicResponse
  (:init
   (&key
    ((:fb_x __fb_x) 0)
    ((:fd_y __fd_y) 0)
    ((:fd_z __fd_z) 0)
    )
   (send-super :init)
   (setq _fb_x (round __fb_x))
   (setq _fd_y (round __fd_y))
   (setq _fd_z (round __fd_z))
   self)
  (:fb_x
   (&optional __fb_x)
   (if __fb_x (setq _fb_x __fb_x)) _fb_x)
  (:fd_y
   (&optional __fd_y)
   (if __fd_y (setq _fd_y __fd_y)) _fd_y)
  (:fd_z
   (&optional __fd_z)
   (if __fd_z (setq _fd_z __fd_z)) _fd_z)
  (:serialization-length
   ()
   (+
    ;; int32 _fb_x
    4
    ;; int32 _fd_y
    4
    ;; int32 _fd_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _fb_x
       (write-long _fb_x s)
     ;; int32 _fd_y
       (write-long _fd_y s)
     ;; int32 _fd_z
       (write-long _fd_z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _fb_x
     (setq _fb_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fd_y
     (setq _fd_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _fd_z
     (setq _fd_z (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass remote::basic
  :super ros::object
  :slots ())

(setf (get remote::basic :md5sum-) "bb80ece2e91b33ae008c863d1e34b34c")
(setf (get remote::basic :datatype-) "remote/basic")
(setf (get remote::basic :request) remote::basicRequest)
(setf (get remote::basic :response) remote::basicResponse)

(defmethod remote::basicRequest
  (:response () (instance remote::basicResponse :init)))

(setf (get remote::basicRequest :md5sum-) "bb80ece2e91b33ae008c863d1e34b34c")
(setf (get remote::basicRequest :datatype-) "remote/basicRequest")
(setf (get remote::basicRequest :definition-)
      "int32 pos_x
int32 pos_y
int32 pos_z

---
int32 fb_x
int32 fd_y
int32 fd_z


")

(setf (get remote::basicResponse :md5sum-) "bb80ece2e91b33ae008c863d1e34b34c")
(setf (get remote::basicResponse :datatype-) "remote/basicResponse")
(setf (get remote::basicResponse :definition-)
      "int32 pos_x
int32 pos_y
int32 pos_z

---
int32 fb_x
int32 fd_y
int32 fd_z


")



(provide :remote/basic "bb80ece2e91b33ae008c863d1e34b34c")


