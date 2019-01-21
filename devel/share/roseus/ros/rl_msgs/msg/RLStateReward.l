;; Auto-generated. Do not edit!


(when (boundp 'rl_msgs::RLStateReward)
  (if (not (find-package "RL_MSGS"))
    (make-package "RL_MSGS"))
  (shadow 'RLStateReward (find-package "RL_MSGS")))
(unless (find-package "RL_MSGS::RLSTATEREWARD")
  (make-package "RL_MSGS::RLSTATEREWARD"))

(in-package "ROS")
;;//! \htmlinclude RLStateReward.msg.html


(defclass rl_msgs::RLStateReward
  :super ros::object
  :slots (_state _reward _terminal ))

(defmethod rl_msgs::RLStateReward
  (:init
   (&key
    ((:state __state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reward __reward) 0.0)
    ((:terminal __terminal) nil)
    )
   (send-super :init)
   (setq _state __state)
   (setq _reward (float __reward))
   (setq _terminal __terminal)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:terminal
   (&optional __terminal)
   (if __terminal (setq _terminal __terminal)) _terminal)
  (:serialization-length
   ()
   (+
    ;; float32[] _state
    (* 4    (length _state)) 4
    ;; float32 _reward
    4
    ;; bool _terminal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (sys::poke (elt _state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _terminal
       (if _terminal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _reward
     (setq _reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _terminal
     (setq _terminal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rl_msgs::RLStateReward :md5sum-) "d7e0cc8b9cf2889f09d7f096a11a2873")
(setf (get rl_msgs::RLStateReward :datatype-) "rl_msgs/RLStateReward")
(setf (get rl_msgs::RLStateReward :definition-)
      "# Message for returning the current sensation vector 
# (i.e. state or observation or sensor readings) and a
# reward from an  environment

float32[] state
float32 reward
bool terminal
")



(provide :rl_msgs/RLStateReward "d7e0cc8b9cf2889f09d7f096a11a2873")


