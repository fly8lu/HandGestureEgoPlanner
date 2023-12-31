// Generated by gencpp from file uav_server/UavGesture.msg
// DO NOT EDIT!


#ifndef UAV_SERVER_MESSAGE_UAVGESTURE_H
#define UAV_SERVER_MESSAGE_UAVGESTURE_H

#include <ros/service_traits.h>


#include <uav_server/UavGestureRequest.h>
#include <uav_server/UavGestureResponse.h>


namespace uav_server
{

struct UavGesture
{

typedef UavGestureRequest Request;
typedef UavGestureResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UavGesture
} // namespace uav_server


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::uav_server::UavGesture > {
  static const char* value()
  {
    return "cf0091775db056556bcbf0c6e550c71f";
  }

  static const char* value(const ::uav_server::UavGesture&) { return value(); }
};

template<>
struct DataType< ::uav_server::UavGesture > {
  static const char* value()
  {
    return "uav_server/UavGesture";
  }

  static const char* value(const ::uav_server::UavGesture&) { return value(); }
};


// service_traits::MD5Sum< ::uav_server::UavGestureRequest> should match
// service_traits::MD5Sum< ::uav_server::UavGesture >
template<>
struct MD5Sum< ::uav_server::UavGestureRequest>
{
  static const char* value()
  {
    return MD5Sum< ::uav_server::UavGesture >::value();
  }
  static const char* value(const ::uav_server::UavGestureRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::uav_server::UavGestureRequest> should match
// service_traits::DataType< ::uav_server::UavGesture >
template<>
struct DataType< ::uav_server::UavGestureRequest>
{
  static const char* value()
  {
    return DataType< ::uav_server::UavGesture >::value();
  }
  static const char* value(const ::uav_server::UavGestureRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::uav_server::UavGestureResponse> should match
// service_traits::MD5Sum< ::uav_server::UavGesture >
template<>
struct MD5Sum< ::uav_server::UavGestureResponse>
{
  static const char* value()
  {
    return MD5Sum< ::uav_server::UavGesture >::value();
  }
  static const char* value(const ::uav_server::UavGestureResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::uav_server::UavGestureResponse> should match
// service_traits::DataType< ::uav_server::UavGesture >
template<>
struct DataType< ::uav_server::UavGestureResponse>
{
  static const char* value()
  {
    return DataType< ::uav_server::UavGesture >::value();
  }
  static const char* value(const ::uav_server::UavGestureResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UAV_SERVER_MESSAGE_UAVGESTURE_H
