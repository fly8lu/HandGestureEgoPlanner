// Auto-generated. Do not edit!

// (in-package uav_client.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ModeSrvsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModeSrvsRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModeSrvsRequest
    let len;
    let data = new ModeSrvsRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'uav_client/ModeSrvsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66990e73c7aab0c47ddcdc70f7fa5bd0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModeSrvsRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    return resolved;
    }
};

class ModeSrvsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModeSrvsResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.int32(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModeSrvsResponse
    let len;
    let data = new ModeSrvsResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'uav_client/ModeSrvsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49ceb5b32ea3af22073ede4a0328249e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModeSrvsResponse(null);
    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ModeSrvsRequest,
  Response: ModeSrvsResponse,
  md5sum() { return '4e20b2f68ee6c802f503418ca4f6f6af'; },
  datatype() { return 'uav_client/ModeSrvs'; }
};
