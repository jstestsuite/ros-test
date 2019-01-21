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

class RLStateReward {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.reward = null;
      this.terminal = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
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
    // Serializes a message object of type RLStateReward
    // Serialize message field [state]
    bufferOffset = _arraySerializer.float32(obj.state, buffer, bufferOffset, null);
    // Serialize message field [reward]
    bufferOffset = _serializer.float32(obj.reward, buffer, bufferOffset);
    // Serialize message field [terminal]
    bufferOffset = _serializer.bool(obj.terminal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RLStateReward
    let len;
    let data = new RLStateReward(null);
    // Deserialize message field [state]
    data.state = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [reward]
    data.reward = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [terminal]
    data.terminal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.state.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rl_msgs/RLStateReward';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e0cc8b9cf2889f09d7f096a11a2873';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for returning the current sensation vector 
    # (i.e. state or observation or sensor readings) and a
    # reward from an  environment
    
    float32[] state
    float32 reward
    bool terminal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RLStateReward(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = []
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

module.exports = RLStateReward;
