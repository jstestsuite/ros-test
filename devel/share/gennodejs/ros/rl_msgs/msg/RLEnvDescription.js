// Auto-generated. Do not edit!

// (in-package rl_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RLEnvDescription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_actions = null;
      this.num_states = null;
      this.min_state_range = null;
      this.max_state_range = null;
      this.max_reward = null;
      this.reward_range = null;
      this.stochastic = null;
      this.episodic = null;
      this.title = null;
    }
    else {
      if (initObj.hasOwnProperty('num_actions')) {
        this.num_actions = initObj.num_actions
      }
      else {
        this.num_actions = 0.0;
      }
      if (initObj.hasOwnProperty('num_states')) {
        this.num_states = initObj.num_states
      }
      else {
        this.num_states = 0.0;
      }
      if (initObj.hasOwnProperty('min_state_range')) {
        this.min_state_range = initObj.min_state_range
      }
      else {
        this.min_state_range = [];
      }
      if (initObj.hasOwnProperty('max_state_range')) {
        this.max_state_range = initObj.max_state_range
      }
      else {
        this.max_state_range = [];
      }
      if (initObj.hasOwnProperty('max_reward')) {
        this.max_reward = initObj.max_reward
      }
      else {
        this.max_reward = 0.0;
      }
      if (initObj.hasOwnProperty('reward_range')) {
        this.reward_range = initObj.reward_range
      }
      else {
        this.reward_range = 0.0;
      }
      if (initObj.hasOwnProperty('stochastic')) {
        this.stochastic = initObj.stochastic
      }
      else {
        this.stochastic = false;
      }
      if (initObj.hasOwnProperty('episodic')) {
        this.episodic = initObj.episodic
      }
      else {
        this.episodic = false;
      }
      if (initObj.hasOwnProperty('title')) {
        this.title = initObj.title
      }
      else {
        this.title = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RLEnvDescription
    // Serialize message field [num_actions]
    bufferOffset = _serializer.float32(obj.num_actions, buffer, bufferOffset);
    // Serialize message field [num_states]
    bufferOffset = _serializer.float32(obj.num_states, buffer, bufferOffset);
    // Serialize message field [min_state_range]
    bufferOffset = _arraySerializer.float32(obj.min_state_range, buffer, bufferOffset, null);
    // Serialize message field [max_state_range]
    bufferOffset = _arraySerializer.float32(obj.max_state_range, buffer, bufferOffset, null);
    // Serialize message field [max_reward]
    bufferOffset = _serializer.float32(obj.max_reward, buffer, bufferOffset);
    // Serialize message field [reward_range]
    bufferOffset = _serializer.float32(obj.reward_range, buffer, bufferOffset);
    // Serialize message field [stochastic]
    bufferOffset = _serializer.bool(obj.stochastic, buffer, bufferOffset);
    // Serialize message field [episodic]
    bufferOffset = _serializer.bool(obj.episodic, buffer, bufferOffset);
    // Serialize message field [title]
    bufferOffset = _serializer.string(obj.title, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RLEnvDescription
    let len;
    let data = new RLEnvDescription(null);
    // Deserialize message field [num_actions]
    data.num_actions = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [num_states]
    data.num_states = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_state_range]
    data.min_state_range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [max_state_range]
    data.max_state_range = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [max_reward]
    data.max_reward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [reward_range]
    data.reward_range = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stochastic]
    data.stochastic = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [episodic]
    data.episodic = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [title]
    data.title = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.min_state_range.length;
    length += 4 * object.max_state_range.length;
    length += object.title.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_msgs/RLEnvDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41ee0d621b8031a958ff6d1f587a3860';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message that contains details about an RL enviroment/task
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RLEnvDescription(null);
    if (msg.num_actions !== undefined) {
      resolved.num_actions = msg.num_actions;
    }
    else {
      resolved.num_actions = 0.0
    }

    if (msg.num_states !== undefined) {
      resolved.num_states = msg.num_states;
    }
    else {
      resolved.num_states = 0.0
    }

    if (msg.min_state_range !== undefined) {
      resolved.min_state_range = msg.min_state_range;
    }
    else {
      resolved.min_state_range = []
    }

    if (msg.max_state_range !== undefined) {
      resolved.max_state_range = msg.max_state_range;
    }
    else {
      resolved.max_state_range = []
    }

    if (msg.max_reward !== undefined) {
      resolved.max_reward = msg.max_reward;
    }
    else {
      resolved.max_reward = 0.0
    }

    if (msg.reward_range !== undefined) {
      resolved.reward_range = msg.reward_range;
    }
    else {
      resolved.reward_range = 0.0
    }

    if (msg.stochastic !== undefined) {
      resolved.stochastic = msg.stochastic;
    }
    else {
      resolved.stochastic = false
    }

    if (msg.episodic !== undefined) {
      resolved.episodic = msg.episodic;
    }
    else {
      resolved.episodic = false
    }

    if (msg.title !== undefined) {
      resolved.title = msg.title;
    }
    else {
      resolved.title = ''
    }

    return resolved;
    }
};

module.exports = RLEnvDescription;
