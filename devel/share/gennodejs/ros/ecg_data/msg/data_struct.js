// Auto-generated. Do not edit!

// (in-package ecg_data.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class data_struct {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.signal_type = null;
      this.project_id = null;
      this.user_id = null;
      this.time = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('signal_type')) {
        this.signal_type = initObj.signal_type
      }
      else {
        this.signal_type = '';
      }
      if (initObj.hasOwnProperty('project_id')) {
        this.project_id = initObj.project_id
      }
      else {
        this.project_id = '';
      }
      if (initObj.hasOwnProperty('user_id')) {
        this.user_id = initObj.user_id
      }
      else {
        this.user_id = '';
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type data_struct
    // Serialize message field [signal_type]
    bufferOffset = _serializer.string(obj.signal_type, buffer, bufferOffset);
    // Serialize message field [project_id]
    bufferOffset = _serializer.string(obj.project_id, buffer, bufferOffset);
    // Serialize message field [user_id]
    bufferOffset = _serializer.string(obj.user_id, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.time(obj.time, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.float64(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type data_struct
    let len;
    let data = new data_struct(null);
    // Deserialize message field [signal_type]
    data.signal_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [project_id]
    data.project_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [user_id]
    data.user_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.signal_type);
    length += _getByteLength(object.project_id);
    length += _getByteLength(object.user_id);
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ecg_data/data_struct';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bebbd51a7e427939fe0d843092aefc83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string signal_type
    string project_id 
    string user_id
    time time 
    float64 data 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new data_struct(null);
    if (msg.signal_type !== undefined) {
      resolved.signal_type = msg.signal_type;
    }
    else {
      resolved.signal_type = ''
    }

    if (msg.project_id !== undefined) {
      resolved.project_id = msg.project_id;
    }
    else {
      resolved.project_id = ''
    }

    if (msg.user_id !== undefined) {
      resolved.user_id = msg.user_id;
    }
    else {
      resolved.user_id = ''
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = {secs: 0, nsecs: 0}
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0.0
    }

    return resolved;
    }
};

module.exports = data_struct;
