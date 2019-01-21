;; Auto-generated. Do not edit!


(when (boundp 'rl_msgs::RLExperimentInfo)
  (if (not (find-package "RL_MSGS"))
    (make-package "RL_MSGS"))
  (shadow 'RLExperimentInfo (find-package "RL_MSGS")))
(unless (find-package "RL_MSGS::RLEXPERIMENTINFO")
  (make-package "RL_MSGS::RLEXPERIMENTINFO"))

(in-package "ROS")
;;//! \htmlinclude RLExperimentInfo.msg.html


(defclass rl_msgs::RLExperimentInfo
  :super ros::object
  :slots (_episode_number _episode_reward _number_actions ))

(defmethod rl_msgs::RLExperimentInfo
  (:init
   (&key
    ((:episode_number __episode_number) 0)
    ((:episode_reward __episode_reward) 0.0)
    ((:number_actions __number_actions) 0)
    )
   (send-super :init)
   (setq _episode_number (round __episode_number))
   (setq _episode_reward (float __episode_reward))
   (setq _number_actions (round __number_actions))
   self)
  (:episode_number
   (&optional __episode_number)
   (if __episode_number (setq _episode_number __episode_number)) _episode_number)
  (:episode_reward
   (&optional __episode_reward)
   (if __episode_reward (setq _episode_reward __episode_reward)) _episode_reward)
  (:number_actions
   (&optional __number_actions)
   (if __number_actions (setq _number_actions __number_actions)) _number_actions)
  (:serialization-length
   ()
   (+
    ;; int32 _episode_number
    4
    ;; float32 _episode_reward
    4
    ;; int32 _number_actions
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _episode_number
       (write-long _episode_number s)
     ;; float32 _episode_reward
       (sys::poke _episode_reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _number_actions
       (write-long _number_actions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _episode_number
     (setq _episode_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _episode_reward
     (setq _episode_reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _number_actions
     (setq _number_actions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rl_msgs::RLExperimentInfo :md5sum-) "df389dab0f017dc2a66e6cedd44b7a1e")
(setf (get rl_msgs::RLExperimentInfo :datatype-) "rl_msgs/RLExperimentInfo")
(setf (get rl_msgs::RLExperimentInfo :definition-)
      "# Message displaying / plotting / printing info about experiments

int32 episode_number
float32 episode_reward

int32 number_actions

")



(provide :rl_msgs/RLExperimentInfo "df389dab0f017dc2a66e6cedd44b7a1e")


