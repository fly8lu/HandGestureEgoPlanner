// Generated by gencpp from file uav_server/UavGestureRequest.msg
// DO NOT EDIT!


#ifndef UAV_SERVER_MESSAGE_UAVGESTUREREQUEST_H
#define UAV_SERVER_MESSAGE_UAVGESTUREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uav_server
{
template <class ContainerAllocator>
struct UavGestureRequest_
{
  typedef UavGestureRequest_<ContainerAllocator> Type;

  UavGestureRequest_()
    : cmdEB(0)
    , cmdPV(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , mode(0)  {
    }
  UavGestureRequest_(const ContainerAllocator& _alloc)
    : cmdEB(0)
    , cmdPV(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)
    , mode(0)  {
  (void)_alloc;
    }



   typedef int8_t _cmdEB_type;
  _cmdEB_type cmdEB;

   typedef int8_t _cmdPV_type;
  _cmdPV_type cmdPV;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef int8_t _mode_type;
  _mode_type mode;





  typedef boost::shared_ptr< ::uav_server::UavGestureRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uav_server::UavGestureRequest_<ContainerAllocator> const> ConstPtr;

}; // struct UavGestureRequest_

typedef ::uav_server::UavGestureRequest_<std::allocator<void> > UavGestureRequest;

typedef boost::shared_ptr< ::uav_server::UavGestureRequest > UavGestureRequestPtr;
typedef boost::shared_ptr< ::uav_server::UavGestureRequest const> UavGestureRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uav_server::UavGestureRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uav_server::UavGestureRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uav_server::UavGestureRequest_<ContainerAllocator1> & lhs, const ::uav_server::UavGestureRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmdEB == rhs.cmdEB &&
    lhs.cmdPV == rhs.cmdPV &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.yaw == rhs.yaw &&
    lhs.mode == rhs.mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uav_server::UavGestureRequest_<ContainerAllocator1> & lhs, const ::uav_server::UavGestureRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uav_server

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uav_server::UavGestureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uav_server::UavGestureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uav_server::UavGestureRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uav_server::UavGestureRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uav_server::UavGestureRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uav_server::UavGestureRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uav_server::UavGestureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9e6d8b4b6fde804792e5fa56a6fc5723";
  }

  static const char* value(const ::uav_server::UavGestureRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9e6d8b4b6fde8047ULL;
  static const uint64_t static_value2 = 0x92e5fa56a6fc5723ULL;
};

template<class ContainerAllocator>
struct DataType< ::uav_server::UavGestureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uav_server/UavGestureRequest";
  }

  static const char* value(const ::uav_server::UavGestureRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uav_server::UavGestureRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 cmdEB\n"
"int8 cmdPV\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 yaw\n"
"int8 mode\n"
;
  }

  static const char* value(const ::uav_server::UavGestureRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uav_server::UavGestureRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmdEB);
      stream.next(m.cmdPV);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
      stream.next(m.mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UavGestureRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uav_server::UavGestureRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uav_server::UavGestureRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmdEB: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmdEB);
    s << indent << "cmdPV: ";
    Printer<int8_t>::stream(s, indent + "  ", v.cmdPV);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "mode: ";
    Printer<int8_t>::stream(s, indent + "  ", v.mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UAV_SERVER_MESSAGE_UAVGESTUREREQUEST_H
