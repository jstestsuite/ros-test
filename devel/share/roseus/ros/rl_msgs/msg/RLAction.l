;; Auto-generated. Do not edit!


(when (boundp 'rl_msgs::RLAction)
  (if (not (find-package "RL_MSGS"))
    (make-package "RL_MSGS"))
  (shadow 'RLAction (find-package "RL_MSGS")))
(unless (find-package "RL_MSGS::RLACTION")
  (make-package "RL_MSGS::RLACTION"))

(in-package "ROS")
;;//! \htmlinclude RLAction.msg.html


(defclass rl_msgs::RLAction
  :super ros::object
  :slots (_action ))

(defmethod rl_msgs::RLAction
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int32 _action
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _action
       (write-long _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rl_msgs::RLAction :md5sum-) "b028501ac85c840a01d50342b4cc9b6e")
(setf (get rl_msgs::RLAction :datatype-) "rl_msgs/RLAction")
(setf (get rl_msgs::RLAction :definition-)
      "# Message for describing an action in RL

int32 action

")



(provide :rl_msgs/RLAction "b028501ac85c840a01d50342b4cc9b6e")


