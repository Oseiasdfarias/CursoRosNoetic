// Auto-generated. Do not edit!

// (in-package my_project_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CounterHistory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_value = null;
      this.last_value = null;
      this.cycles = null;
    }
    else {
      if (initObj.hasOwnProperty('current_value')) {
        this.current_value = initObj.current_value
      }
      else {
        this.current_value = 0.0;
      }
      if (initObj.hasOwnProperty('last_value')) {
        this.last_value = initObj.last_value
      }
      else {
        this.last_value = 0.0;
      }
      if (initObj.hasOwnProperty('cycles')) {
        this.cycles = initObj.cycles
      }
      else {
        this.cycles = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CounterHistory
    // Serialize message field [current_value]
    bufferOffset = _serializer.float64(obj.current_value, buffer, bufferOffset);
    // Serialize message field [last_value]
    bufferOffset = _serializer.float64(obj.last_value, buffer, bufferOffset);
    // Serialize message field [cycles]
    bufferOffset = _serializer.int64(obj.cycles, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CounterHistory
    let len;
    let data = new CounterHistory(null);
    // Deserialize message field [current_value]
    data.current_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [last_value]
    data.last_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cycles]
    data.cycles = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_project_msgs/CounterHistory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56341dd3fc54a9e6cbc911af5bca695f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 current_value
    float64 last_value
    int64 cycles
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CounterHistory(null);
    if (msg.current_value !== undefined) {
      resolved.current_value = msg.current_value;
    }
    else {
      resolved.current_value = 0.0
    }

    if (msg.last_value !== undefined) {
      resolved.last_value = msg.last_value;
    }
    else {
      resolved.last_value = 0.0
    }

    if (msg.cycles !== undefined) {
      resolved.cycles = msg.cycles;
    }
    else {
      resolved.cycles = 0
    }

    return resolved;
    }
};

module.exports = CounterHistory;
