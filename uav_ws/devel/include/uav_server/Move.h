// Generated by gencpp from file uav_server/Move.msg
// DO NOT EDIT!


#ifndef UAV_SERVER_MESSAGE_MOVE_H
#define UAV_SERVER_MESSAGE_MOVE_H

#include <ros/service_traits.h>


#include <uav_server/MoveRequest.h>
#include <uav_server/MoveResponse.h>


namespace uav_server
{

struct Move
{

typedef MoveRequest Request;
typedef MoveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Move
} // namespace uav_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uav_server::Move > {
  static const char* value()
  {
    return "cecb58d04127b4205e6e2be03ba9e46a";
  }

  static const char* value(const ::uav_server::Move&) { return value(); }
};

template<>
struct DataType< ::uav_server::Move > {
  static const char* value()
  {
    return "uav_server/Move";
  }

  static const char* value(const ::uav_server::Move&) { return value(); }
};


// service_traits::MD5Sum< ::uav_server::MoveRequest> should match
// service_traits::MD5Sum< ::uav_server::Move >
template<>
struct MD5Sum< ::uav_server::MoveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uav_server::Move >::value();
  }
  static const char* value(const ::uav_server::MoveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uav_server::MoveRequest> should match
// service_traits::DataType< ::uav_server::Move >
template<>
struct DataType< ::uav_server::MoveRequest>
{
  static const char* value()
  {
    return DataType< ::uav_server::Move >::value();
  }
  static const char* value(const ::uav_server::MoveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uav_server::MoveResponse> should match
// service_traits::MD5Sum< ::uav_server::Move >
template<>
struct MD5Sum< ::uav_server::MoveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uav_server::Move >::value();
  }
  static const char* value(const ::uav_server::MoveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uav_server::MoveResponse> should match
// service_traits::DataType< ::uav_server::Move >
template<>
struct DataType< ::uav_server::MoveResponse>
{
  static const char* value()
  {
    return DataType< ::uav_server::Move >::value();
  }
  static const char* value(const ::uav_server::MoveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UAV_SERVER_MESSAGE_MOVE_H