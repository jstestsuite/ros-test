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

class RLEnvSeedExperience {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.from_state = null;
      this.action = null;
      this.to_state = null;
      this.reward = null;
      this.terminal = null;
    }
    else {
      if (initObj.hasOwnProperty('from_state')) {
        this.from_state = initObj.from_state
      }
      else {
        this.from_state = [];
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('to_state')) {
        this.to_state = initObj.to_state
      }
      else {
        this.to_state = [];
      }
      if (initObj.hasOwnProperty('reward')) {
        this.reward = initObj.reward
      }
      else {
        this.reward = 0.0;
      }
      if (initObj.hasOwnProperty('terminal')) {
        this.terminal = initObj.terminal
      }
      else {
        this.terminal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RLEnvSeedExperience
    // Serialize message field [from_state]
    bufferOffset = _arraySerializer.float32(obj.from_state, buffer, bufferOffset, null);
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [to_state]
    bufferOffset = _arraySerializer.float32(obj.to_state, buffer, bufferOffset, null);
    // Serialize message field [reward]
    bufferOffset = _serializer.float32(obj.reward, buffer, bufferOffset);
    // Serialize message field [terminal]
    bufferOffset = _serializer.bool(obj.terminal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RLEnvSeedExperience
    let len;
    let data = new RLEnvSeedExperience(null);
    // Deserialize message field [from_state]
    data.from_state = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [to_state]
    data.to_state = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reward]
    data.reward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [terminal]
    data.terminal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.from_state.length;
    length += 4 * object.to_state.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_msgs/RLEnvSeedExperience';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e195f7b7c1a41138d96a4af2de05b1b1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message that contains a seed experience to initialize the model
    float32[] from_state
    int32     action
    float32[] to_state
    float32   reward
    bool      terminal
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RLEnvSeedExperience(null);
    if (msg.from_state !== undefined) {
      resolved.from_state = msg.from_state;
    }
    else {
      resolved.from_state = []
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.to_state !== undefined) {
      resolved.to_state = msg.to_state;
    }
    else {
      resolved.to_state = []
    }

    if (msg.reward !== undefined) {
      resolved.reward = msg.reward;
    }
    else {
      resolved.reward = 0.0
    }

    if (msg.terminal !== undefined) {
      resolved.terminal = msg.terminal;
    }
    else {
      resolved.terminal = false
    }

    return resolved;
    }
};

module.exports = RLEnvSeedExperience;
