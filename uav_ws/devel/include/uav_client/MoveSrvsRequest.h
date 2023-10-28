// Generated by gencpp from file uav_client/MoveSrvsRequest.msg
// DO NOT EDIT!


#ifndef UAV_CLIENT_MESSAGE_MOVESRVSREQUEST_H
#define UAV_CLIENT_MESSAGE_MOVESRVSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uav_client
{
template <class ContainerAllocator>
struct MoveSrvsRequest_
{
  typedef MoveSrvsRequest_<ContainerAllocator> Type;

  MoveSrvsRequest_()
    : cmdEB(0)
    , cmdPV(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)  {
    }
  MoveSrvsRequest_(const ContainerAllocator& _alloc)
    : cmdEB(0)
    , cmdPV(0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _cmdEB_type;
  _cmdEB_type cmdEB;

   typedef int32_t _cmdPV_type;
  _cmdPV_type cmdPV;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _z_type;
  _z_type z;

   typedef float _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::uav_client::MoveSrvsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uav_client::MoveSrvsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveSrvsRequest_

typedef ::uav_client::MoveSrvsRequest_<std::allocator<void> > MoveSrvsRequest;

typedef boost::shared_ptr< ::uav_client::MoveSrvsRequest > MoveSrvsRequestPtr;
typedef boost::shared_ptr< ::uav_client::MoveSrvsRequest const> MoveSrvsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uav_client::MoveSrvsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uav_client::MoveSrvsRequest_<ContainerAllocator1> & lhs, const ::uav_client::MoveSrvsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmdEB == rhs.cmdEB &&
    lhs.cmdPV == rhs.cmdPV &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.yaw == rhs.yaw;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uav_client::MoveSrvsRequest_<ContainerAllocator1> & lhs, const ::uav_client::MoveSrvsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uav_client

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uav_client::MoveSrvsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uav_client::MoveSrvsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uav_client::MoveSrvsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fd4334ddb278ab2cdc45598196e29a13";
  }

  static const char* value(const ::uav_client::MoveSrvsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfd4334ddb278ab2cULL;
  static const uint64_t static_value2 = 0xdc45598196e29a13ULL;
};

template<class ContainerAllocator>
struct DataType< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uav_client/MoveSrvsRequest";
  }

  static const char* value(const ::uav_client::MoveSrvsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 cmdEB\n"
"int32 cmdPV\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
"float32 yaw\n"
;
  }

  static const char* value(const ::uav_client::MoveSrvsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmdEB);
      stream.next(m.cmdPV);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveSrvsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uav_client::MoveSrvsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uav_client::MoveSrvsRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmdEB: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cmdEB);
    s << indent << "cmdPV: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cmdPV);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<float>::stream(s, indent + "  ", v.z);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UAV_CLIENT_MESSAGE_MOVESRVSREQUEST_H