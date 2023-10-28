// Generated by gencpp from file uav_server/ModeRequest.msg
// DO NOT EDIT!


#ifndef UAV_SERVER_MESSAGE_MODEREQUEST_H
#define UAV_SERVER_MESSAGE_MODEREQUEST_H


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
struct ModeRequest_
{
  typedef ModeRequest_<ContainerAllocator> Type;

  ModeRequest_()
    : cmd(0)  {
    }
  ModeRequest_(const ContainerAllocator& _alloc)
    : cmd(0)  {
  (void)_alloc;
    }



   typedef int32_t _cmd_type;
  _cmd_type cmd;





  typedef boost::shared_ptr< ::uav_server::ModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uav_server::ModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ModeRequest_

typedef ::uav_server::ModeRequest_<std::allocator<void> > ModeRequest;

typedef boost::shared_ptr< ::uav_server::ModeRequest > ModeRequestPtr;
typedef boost::shared_ptr< ::uav_server::ModeRequest const> ModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uav_server::ModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uav_server::ModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::uav_server::ModeRequest_<ContainerAllocator1> & lhs, const ::uav_server::ModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.cmd == rhs.cmd;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::uav_server::ModeRequest_<ContainerAllocator1> & lhs, const ::uav_server::ModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace uav_server

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::uav_server::ModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uav_server::ModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uav_server::ModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uav_server::ModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uav_server::ModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uav_server::ModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uav_server::ModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "66990e73c7aab0c47ddcdc70f7fa5bd0";
  }

  static const char* value(const ::uav_server::ModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x66990e73c7aab0c4ULL;
  static const uint64_t static_value2 = 0x7ddcdc70f7fa5bd0ULL;
};

template<class ContainerAllocator>
struct DataType< ::uav_server::ModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uav_server/ModeRequest";
  }

  static const char* value(const ::uav_server::ModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uav_server::ModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 cmd\n"
;
  }

  static const char* value(const ::uav_server::ModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uav_server::ModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uav_server::ModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uav_server::ModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "cmd: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // UAV_SERVER_MESSAGE_MODEREQUEST_H
