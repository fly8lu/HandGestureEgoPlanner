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

class UavSrvsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmdEB = null;
      this.cmdPV = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.yaw = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('cmdEB')) {
        this.cmdEB = initObj.cmdEB
      }
      else {
        this.cmdEB = 0;
      }
      if (initObj.hasOwnProperty('cmdPV')) {
        this.cmdPV = initObj.cmdPV
      }
      else {
        this.cmdPV = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UavSrvsRequest
    // Serialize message field [cmdEB]
    bufferOffset = _serializer.int8(obj.cmdEB, buffer, bufferOffset);
    // Serialize message field [cmdPV]
    bufferOffset = _serializer.int8(obj.cmdPV, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UavSrvsRequest
    let len;
    let data = new UavSrvsRequest(null);
    // Deserialize message field [cmdEB]
    data.cmdEB = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [cmdPV]
    data.cmdPV = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'uav_client/UavSrvsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e6d8b4b6fde804792e5fa56a6fc5723';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 cmdEB
    int8 cmdPV
    float32 x
    float32 y
    float32 z
    float32 yaw
    int8 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UavSrvsRequest(null);
    if (msg.cmdEB !== undefined) {
      resolved.cmdEB = msg.cmdEB;
    }
    else {
      resolved.cmdEB = 0
    }

    if (msg.cmdPV !== undefined) {
      resolved.cmdPV = msg.cmdPV;
    }
    else {
      resolved.cmdPV = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

class UavSrvsResponse {
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
    // Serializes a message object of type UavSrvsResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.int8(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UavSrvsResponse
    let len;
    let data = new UavSrvsResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'uav_client/UavSrvsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c99621d1dee505388e972db86733bb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UavSrvsResponse(null);
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
  Request: UavSrvsRequest,
  Response: UavSrvsResponse,
  md5sum() { return 'cf0091775db056556bcbf0c6e550c71f'; },
  datatype() { return 'uav_client/UavSrvs'; }
};
