# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from uav_client/MoveSrvsRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MoveSrvsRequest(genpy.Message):
  _md5sum = "fd4334ddb278ab2cdc45598196e29a13"
  _type = "uav_client/MoveSrvsRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 cmdEB
int32 cmdPV
float32 x
float32 y
float32 z
float32 yaw
"""
  __slots__ = ['cmdEB','cmdPV','x','y','z','yaw']
  _slot_types = ['int32','int32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmdEB,cmdPV,x,y,z,yaw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoveSrvsRequest, self).__init__(*args, **kwds)
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
    else:
      self.cmdEB = 0
      self.cmdPV = 0
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.yaw = 0.

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
      buff.write(_get_struct_2i4f().pack(_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw))
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
      end += 24
      (_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw,) = _get_struct_2i4f().unpack(str[start:end])
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
      buff.write(_get_struct_2i4f().pack(_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw))
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
      end += 24
      (_x.cmdEB, _x.cmdPV, _x.x, _x.y, _x.z, _x.yaw,) = _get_struct_2i4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i4f = None
def _get_struct_2i4f():
    global _struct_2i4f
    if _struct_2i4f is None:
        _struct_2i4f = struct.Struct("<2i4f")
    return _struct_2i4f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from uav_client/MoveSrvsResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MoveSrvsResponse(genpy.Message):
  _md5sum = "49ceb5b32ea3af22073ede4a0328249e"
  _type = "uav_client/MoveSrvsResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 feedback

"""
  __slots__ = ['feedback']
  _slot_types = ['int32']

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
      super(MoveSrvsResponse, self).__init__(*args, **kwds)
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
      buff.write(_get_struct_i().pack(_x))
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
      end += 4
      (self.feedback,) = _get_struct_i().unpack(str[start:end])
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
      buff.write(_get_struct_i().pack(_x))
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
      end += 4
      (self.feedback,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
class MoveSrvs(object):
  _type          = 'uav_client/MoveSrvs'
  _md5sum = 'cecb58d04127b4205e6e2be03ba9e46a'
  _request_class  = MoveSrvsRequest
  _response_class = MoveSrvsResponse
