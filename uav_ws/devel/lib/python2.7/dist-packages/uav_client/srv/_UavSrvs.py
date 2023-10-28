# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from uav_client/UavSrvsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UavSrvsRequest(genpy.Message):
  _md5sum = "9e6d8b4b6fde804792e5fa56a6fc5723"
  _type = "uav_client/UavSrvsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 cmdEB
int8 cmdPV
float32 x
float32 y
float32 z
float32 yaw
int8 mode
"""
  __slots__ = ['cmdEB','cmdPV','x','y','z','yaw','mode']
  _slot_types = ['int8','int8','float32','float32','float32','float32','int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmdEB,cmdPV,x,y,z,yaw,mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UavSrvsRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmdEB is None:
        self.cmdEB = 0
      if self.cmdPV is None:
        self.cmdPV = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.mode is None:
        self.mode = 0
    else:
      self.cmdEB = 0
      self.cmdPV = 0
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.yaw = 0.
      self.mode = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2b4fb().pack(_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw, _x.mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 19
      (_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw, _x.mode,) = _get_struct_2b4fb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2b4fb().pack(_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw, _x.mode))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 19
      (_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw, _x.mode,) = _get_struct_2b4fb().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2b4fb = None
def _get_struct_2b4fb():
    global _struct_2b4fb
    if _struct_2b4fb is None:
        _struct_2b4fb = struct.Struct("<2b4fb")
    return _struct_2b4fb
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from uav_client/UavSrvsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class UavSrvsResponse(genpy.Message):
  _md5sum = "2c99621d1dee505388e972db86733bb8"
  _type = "uav_client/UavSrvsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 feedback

"""
  __slots__ = ['feedback']
  _slot_types = ['int8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(UavSrvsResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.feedback is None:
        self.feedback = 0
    else:
      self.feedback = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.feedback
      buff.write(_get_struct_b().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.feedback,) = _get_struct_b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.feedback
      buff.write(_get_struct_b().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 1
      (self.feedback,) = _get_struct_b().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_b = None
def _get_struct_b():
    global _struct_b
    if _struct_b is None:
        _struct_b = struct.Struct("<b")
    return _struct_b
class UavSrvs(object):
  _type          = 'uav_client/UavSrvs'
  _md5sum = 'cf0091775db056556bcbf0c6e550c71f'
  _request_class  = UavSrvsRequest
  _response_class = UavSrvsResponse
