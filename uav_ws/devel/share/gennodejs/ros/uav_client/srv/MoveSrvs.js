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

class MoveSrvsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmdEB = null;
      this.cmdPV = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.yaw = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveSrvsRequest
    // Serialize message field [cmdEB]
    bufferOffset = _serializer.int32(obj.cmdEB, buffer, bufferOffset);
    // Serialize message field [cmdPV]
    bufferOffset = _serializer.int32(obj.cmdPV, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveSrvsRequest
    let len;
    let data = new MoveSrvsRequest(null);
    // Deserialize message field [cmdEB]
    data.cmdEB = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cmdPV]
    data.cmdPV = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'uav_client/MoveSrvsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd4334ddb278ab2cdc45598196e29a13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmdEB
    int32 cmdPV
    float32 x
    float32 y
    float32 z
    float32 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveSrvsRequest(null);
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

    return resolved;
    }
};

class MoveSrvsResponse {
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
    // Serializes a message object of type MoveSrvsResponse
    // Serialize message field [feedback]
    bufferOffset = _serializer.int32(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveSrvsResponse
    let len;
    let data = new MoveSrvsResponse(null);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'uav_client/MoveSrvsResponse';
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
    const resolved = new MoveSrvsResponse(null);
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
  Request: MoveSrvsRequest,
  Response: MoveSrvsResponse,
  md5sum() { return 'cecb58d04127b4205e6e2be03ba9e46a'; },
  datatype() { return 'uav_client/MoveSrvs'; }
};
