;; Auto-generated. Do not edit!


(when (boundp 'rl_msgs::RLEnvSeedExperience)
  (if (not (find-package "RL_MSGS"))
    (make-package "RL_MSGS"))
  (shadow 'RLEnvSeedExperience (find-package "RL_MSGS")))
(unless (find-package "RL_MSGS::RLENVSEEDEXPERIENCE")
  (make-package "RL_MSGS::RLENVSEEDEXPERIENCE"))

(in-package "ROS")
;;//! \htmlinclude RLEnvSeedExperience.msg.html


(defclass rl_msgs::RLEnvSeedExperience
  :super ros::object
  :slots (_from_state _action _to_state _reward _terminal ))

(defmethod rl_msgs::RLEnvSeedExperience
  (:init
   (&key
    ((:from_state __from_state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:action __action) 0)
    ((:to_state __to_state) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:reward __reward) 0.0)
    ((:terminal __terminal) nil)
    )
   (send-super :init)
   (setq _from_state __from_state)
   (setq _action (round __action))
   (setq _to_state __to_state)
   (setq _reward (float __reward))
   (setq _terminal __terminal)
   self)
  (:from_state
   (&optional __from_state)
   (if __from_state (setq _from_state __from_state)) _from_state)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:to_state
   (&optional __to_state)
   (if __to_state (setq _to_state __to_state)) _to_state)
  (:reward
   (&optional __reward)
   (if __reward (setq _reward __reward)) _reward)
  (:terminal
   (&optional __terminal)
   (if __terminal (setq _terminal __terminal)) _terminal)
  (:serialization-length
   ()
   (+
    ;; float32[] _from_state
    (* 4    (length _from_state)) 4
    ;; int32 _action
    4
    ;; float32[] _to_state
    (* 4    (length _to_state)) 4
    ;; float32 _reward
    4
    ;; bool _terminal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _from_state
     (write-long (length _from_state) s)
     (dotimes (i (length _from_state))
       (sys::poke (elt _from_state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _action
       (write-long _action s)
     ;; float32[] _to_state
     (write-long (length _to_state) s)
     (dotimes (i (length _to_state))
       (sys::poke (elt _to_state i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _reward
       (sys::poke _reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _terminal
       (if _terminal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _from_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _from_state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _from_state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _to_state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_state (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _to_state i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _reward
     (setq _reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _terminal
     (setq _terminal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rl_msgs::RLEnvSeedExperience :md5sum-) "e195f7b7c1a41138d96a4af2de05b1b1")
(setf (get rl_msgs::RLEnvSeedExperience :datatype-) "rl_msgs/RLEnvSeedExperience")
(setf (get rl_msgs::RLEnvSeedExperience :definition-)
      "# Message that contains a seed experience to initialize the model
float32[] from_state
int32     action
float32[] to_state
float32   reward
bool      terminal


")



(provide :rl_msgs/RLEnvSeedExperience "e195f7b7c1a41138d96a4af2de05b1b1")


