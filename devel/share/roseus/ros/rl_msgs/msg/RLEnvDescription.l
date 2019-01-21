;; Auto-generated. Do not edit!


(when (boundp 'rl_msgs::RLEnvDescription)
  (if (not (find-package "RL_MSGS"))
    (make-package "RL_MSGS"))
  (shadow 'RLEnvDescription (find-package "RL_MSGS")))
(unless (find-package "RL_MSGS::RLENVDESCRIPTION")
  (make-package "RL_MSGS::RLENVDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude RLEnvDescription.msg.html


(defclass rl_msgs::RLEnvDescription
  :super ros::object
  :slots (_num_actions _num_states _min_state_range _max_state_range _max_reward _reward_range _stochastic _episodic _title ))

(defmethod rl_msgs::RLEnvDescription
  (:init
   (&key
    ((:num_actions __num_actions) 0.0)
    ((:num_states __num_states) 0.0)
    ((:min_state_range __min_state_range) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_state_range __max_state_range) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_reward __max_reward) 0.0)
    ((:reward_range __reward_range) 0.0)
    ((:stochastic __stochastic) nil)
    ((:episodic __episodic) nil)
    ((:title __title) "")
    )
   (send-super :init)
   (setq _num_actions (float __num_actions))
   (setq _num_states (float __num_states))
   (setq _min_state_range __min_state_range)
   (setq _max_state_range __max_state_range)
   (setq _max_reward (float __max_reward))
   (setq _reward_range (float __reward_range))
   (setq _stochastic __stochastic)
   (setq _episodic __episodic)
   (setq _title (string __title))
   self)
  (:num_actions
   (&optional __num_actions)
   (if __num_actions (setq _num_actions __num_actions)) _num_actions)
  (:num_states
   (&optional __num_states)
   (if __num_states (setq _num_states __num_states)) _num_states)
  (:min_state_range
   (&optional __min_state_range)
   (if __min_state_range (setq _min_state_range __min_state_range)) _min_state_range)
  (:max_state_range
   (&optional __max_state_range)
   (if __max_state_range (setq _max_state_range __max_state_range)) _max_state_range)
  (:max_reward
   (&optional __max_reward)
   (if __max_reward (setq _max_reward __max_reward)) _max_reward)
  (:reward_range
   (&optional __reward_range)
   (if __reward_range (setq _reward_range __reward_range)) _reward_range)
  (:stochastic
   (&optional __stochastic)
   (if __stochastic (setq _stochastic __stochastic)) _stochastic)
  (:episodic
   (&optional __episodic)
   (if __episodic (setq _episodic __episodic)) _episodic)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:serialization-length
   ()
   (+
    ;; float32 _num_actions
    4
    ;; float32 _num_states
    4
    ;; float32[] _min_state_range
    (* 4    (length _min_state_range)) 4
    ;; float32[] _max_state_range
    (* 4    (length _max_state_range)) 4
    ;; float32 _max_reward
    4
    ;; float32 _reward_range
    4
    ;; bool _stochastic
    1
    ;; bool _episodic
    1
    ;; string _title
    4 (length _title)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _num_actions
       (sys::poke _num_actions (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _num_states
       (sys::poke _num_states (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _min_state_range
     (write-long (length _min_state_range) s)
     (dotimes (i (length _min_state_range))
       (sys::poke (elt _min_state_range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _max_state_range
     (write-long (length _max_state_range) s)
     (dotimes (i (length _max_state_range))
       (sys::poke (elt _max_state_range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _max_reward
       (sys::poke _max_reward (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reward_range
       (sys::poke _reward_range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _stochastic
       (if _stochastic (write-byte -1 s) (write-byte 0 s))
     ;; bool _episodic
       (if _episodic (write-byte -1 s) (write-byte 0 s))
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _num_actions
     (setq _num_actions (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _num_states
     (setq _num_states (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _min_state_range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _min_state_range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _min_state_range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _max_state_range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_state_range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _max_state_range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _max_reward
     (setq _max_reward (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reward_range
     (setq _reward_range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _stochastic
     (setq _stochastic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _episodic
     (setq _episodic (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rl_msgs::RLEnvDescription :md5sum-) "41ee0d621b8031a958ff6d1f587a3860")
(setf (get rl_msgs::RLEnvDescription :datatype-) "rl_msgs/RLEnvDescription")
(setf (get rl_msgs::RLEnvDescription :definition-)
      "# Message that contains details about an RL enviroment/task
float32 num_actions
float32 num_states

#Optional information to describe the range of a continous state
#Some RL algorithms may need this to discretize the state space
float32[] min_state_range
float32[] max_state_range

#Info needed for r-max some other methods
float32 max_reward
float32 reward_range

bool stochastic
bool episodic
string title

")



(provide :rl_msgs/RLEnvDescription "41ee0d621b8031a958ff6d1f587a3860")


