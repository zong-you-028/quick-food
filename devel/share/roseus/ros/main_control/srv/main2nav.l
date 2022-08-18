;; Auto-generated. Do not edit!


(when (boundp 'main_control::main2nav)
  (if (not (find-package "MAIN_CONTROL"))
    (make-package "MAIN_CONTROL"))
  (shadow 'main2nav (find-package "MAIN_CONTROL")))
(unless (find-package "MAIN_CONTROL::MAIN2NAV")
  (make-package "MAIN_CONTROL::MAIN2NAV"))
(unless (find-package "MAIN_CONTROL::MAIN2NAVREQUEST")
  (make-package "MAIN_CONTROL::MAIN2NAVREQUEST"))
(unless (find-package "MAIN_CONTROL::MAIN2NAVRESPONSE")
  (make-package "MAIN_CONTROL::MAIN2NAVRESPONSE"))

(in-package "ROS")





(defclass main_control::main2navRequest
  :super ros::object
  :slots (_main_x _main_y _rotation ))

(defmethod main_control::main2navRequest
  (:init
   (&key
    ((:main_x __main_x) 0)
    ((:main_y __main_y) 0)
    ((:rotation __rotation) 0)
    )
   (send-super :init)
   (setq _main_x (round __main_x))
   (setq _main_y (round __main_y))
   (setq _rotation (round __rotation))
   self)
  (:main_x
   (&optional __main_x)
   (if __main_x (setq _main_x __main_x)) _main_x)
  (:main_y
   (&optional __main_y)
   (if __main_y (setq _main_y __main_y)) _main_y)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:serialization-length
   ()
   (+
    ;; int16 _main_x
    2
    ;; int16 _main_y
    2
    ;; int16 _rotation
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _main_x
       (write-word _main_x s)
     ;; int16 _main_y
       (write-word _main_y s)
     ;; int16 _rotation
       (write-word _rotation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _main_x
     (setq _main_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _main_y
     (setq _main_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rotation
     (setq _rotation (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass main_control::main2navResponse
  :super ros::object
  :slots (_done_flag ))

(defmethod main_control::main2navResponse
  (:init
   (&key
    ((:done_flag __done_flag) nil)
    )
   (send-super :init)
   (setq _done_flag __done_flag)
   self)
  (:done_flag
   (&optional (__done_flag :null))
   (if (not (eq __done_flag :null)) (setq _done_flag __done_flag)) _done_flag)
  (:serialization-length
   ()
   (+
    ;; bool _done_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _done_flag
       (if _done_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _done_flag
     (setq _done_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass main_control::main2nav
  :super ros::object
  :slots ())

(setf (get main_control::main2nav :md5sum-) "7efbb833c5f53a4a2e67aab06606b39f")
(setf (get main_control::main2nav :datatype-) "main_control/main2nav")
(setf (get main_control::main2nav :request) main_control::main2navRequest)
(setf (get main_control::main2nav :response) main_control::main2navResponse)

(defmethod main_control::main2navRequest
  (:response () (instance main_control::main2navResponse :init)))

(setf (get main_control::main2navRequest :md5sum-) "7efbb833c5f53a4a2e67aab06606b39f")
(setf (get main_control::main2navRequest :datatype-) "main_control/main2navRequest")
(setf (get main_control::main2navRequest :definition-)
      "int16 main_x
int16 main_y
int16 rotation

---

bool done_flag
")

(setf (get main_control::main2navResponse :md5sum-) "7efbb833c5f53a4a2e67aab06606b39f")
(setf (get main_control::main2navResponse :datatype-) "main_control/main2navResponse")
(setf (get main_control::main2navResponse :definition-)
      "int16 main_x
int16 main_y
int16 rotation

---

bool done_flag
")



(provide :main_control/main2nav "7efbb833c5f53a4a2e67aab06606b39f")

