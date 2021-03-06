// Generated by gencpp from file me495_hw1/ME495SrvRequest.msg
// DO NOT EDIT!


#ifndef ME495_HW1_MESSAGE_ME495SRVREQUEST_H
#define ME495_HW1_MESSAGE_ME495SRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace me495_hw1
{
template <class ContainerAllocator>
struct ME495SrvRequest_
{
  typedef ME495SrvRequest_<ContainerAllocator> Type;

  ME495SrvRequest_()
    : input(0)  {
    }
  ME495SrvRequest_(const ContainerAllocator& _alloc)
    : input(0)  {
    }



   typedef uint32_t _input_type;
  _input_type input;




  typedef boost::shared_ptr< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ME495SrvRequest_

typedef ::me495_hw1::ME495SrvRequest_<std::allocator<void> > ME495SrvRequest;

typedef boost::shared_ptr< ::me495_hw1::ME495SrvRequest > ME495SrvRequestPtr;
typedef boost::shared_ptr< ::me495_hw1::ME495SrvRequest const> ME495SrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::me495_hw1::ME495SrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace me495_hw1

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'me495_hw1': ['/home/josmiranda/ros/src/me495_hw1/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "50c8b86da7a26ace6f8ea1f64b0752e7";
  }

  static const char* value(const ::me495_hw1::ME495SrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x50c8b86da7a26aceULL;
  static const uint64_t static_value2 = 0x6f8ea1f64b0752e7ULL;
};

template<class ContainerAllocator>
struct DataType< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "me495_hw1/ME495SrvRequest";
  }

  static const char* value(const ::me495_hw1::ME495SrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32 input\n\
";
  }

  static const char* value(const ::me495_hw1::ME495SrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.input);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ME495SrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::me495_hw1::ME495SrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::me495_hw1::ME495SrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "input: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.input);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ME495_HW1_MESSAGE_ME495SRVREQUEST_H
