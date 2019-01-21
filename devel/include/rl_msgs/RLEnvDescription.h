// Generated by gencpp from file rl_msgs/RLEnvDescription.msg
// DO NOT EDIT!


#ifndef RL_MSGS_MESSAGE_RLENVDESCRIPTION_H
#define RL_MSGS_MESSAGE_RLENVDESCRIPTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rl_msgs
{
template <class ContainerAllocator>
struct RLEnvDescription_
{
  typedef RLEnvDescription_<ContainerAllocator> Type;

  RLEnvDescription_()
    : num_actions(0.0)
    , num_states(0.0)
    , min_state_range()
    , max_state_range()
    , max_reward(0.0)
    , reward_range(0.0)
    , stochastic(false)
    , episodic(false)
    , title()  {
    }
  RLEnvDescription_(const ContainerAllocator& _alloc)
    : num_actions(0.0)
    , num_states(0.0)
    , min_state_range(_alloc)
    , max_state_range(_alloc)
    , max_reward(0.0)
    , reward_range(0.0)
    , stochastic(false)
    , episodic(false)
    , title(_alloc)  {
  (void)_alloc;
    }



   typedef float _num_actions_type;
  _num_actions_type num_actions;

   typedef float _num_states_type;
  _num_states_type num_states;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _min_state_range_type;
  _min_state_range_type min_state_range;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _max_state_range_type;
  _max_state_range_type max_state_range;

   typedef float _max_reward_type;
  _max_reward_type max_reward;

   typedef float _reward_range_type;
  _reward_range_type reward_range;

   typedef uint8_t _stochastic_type;
  _stochastic_type stochastic;

   typedef uint8_t _episodic_type;
  _episodic_type episodic;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _title_type;
  _title_type title;





  typedef boost::shared_ptr< ::rl_msgs::RLEnvDescription_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rl_msgs::RLEnvDescription_<ContainerAllocator> const> ConstPtr;

}; // struct RLEnvDescription_

typedef ::rl_msgs::RLEnvDescription_<std::allocator<void> > RLEnvDescription;

typedef boost::shared_ptr< ::rl_msgs::RLEnvDescription > RLEnvDescriptionPtr;
typedef boost::shared_ptr< ::rl_msgs::RLEnvDescription const> RLEnvDescriptionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rl_msgs::RLEnvDescription_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rl_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'rl_msgs': ['/home/justin/ros_test/src/rl-texplore-ros-pkg-master/src/rl_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rl_msgs::RLEnvDescription_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rl_msgs::RLEnvDescription_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rl_msgs::RLEnvDescription_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
{
  static const char* value()
  {
    return "41ee0d621b8031a958ff6d1f587a3860";
  }

  static const char* value(const ::rl_msgs::RLEnvDescription_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x41ee0d621b8031a9ULL;
  static const uint64_t static_value2 = 0x58ff6d1f587a3860ULL;
};

template<class ContainerAllocator>
struct DataType< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rl_msgs/RLEnvDescription";
  }

  static const char* value(const ::rl_msgs::RLEnvDescription_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message that contains details about an RL enviroment/task\n\
float32 num_actions\n\
float32 num_states\n\
\n\
#Optional information to describe the range of a continous state\n\
#Some RL algorithms may need this to discretize the state space\n\
float32[] min_state_range\n\
float32[] max_state_range\n\
\n\
#Info needed for r-max some other methods\n\
float32 max_reward\n\
float32 reward_range\n\
\n\
bool stochastic\n\
bool episodic\n\
string title\n\
";
  }

  static const char* value(const ::rl_msgs::RLEnvDescription_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.num_actions);
      stream.next(m.num_states);
      stream.next(m.min_state_range);
      stream.next(m.max_state_range);
      stream.next(m.max_reward);
      stream.next(m.reward_range);
      stream.next(m.stochastic);
      stream.next(m.episodic);
      stream.next(m.title);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RLEnvDescription_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rl_msgs::RLEnvDescription_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rl_msgs::RLEnvDescription_<ContainerAllocator>& v)
  {
    s << indent << "num_actions: ";
    Printer<float>::stream(s, indent + "  ", v.num_actions);
    s << indent << "num_states: ";
    Printer<float>::stream(s, indent + "  ", v.num_states);
    s << indent << "min_state_range[]" << std::endl;
    for (size_t i = 0; i < v.min_state_range.size(); ++i)
    {
      s << indent << "  min_state_range[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.min_state_range[i]);
    }
    s << indent << "max_state_range[]" << std::endl;
    for (size_t i = 0; i < v.max_state_range.size(); ++i)
    {
      s << indent << "  max_state_range[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.max_state_range[i]);
    }
    s << indent << "max_reward: ";
    Printer<float>::stream(s, indent + "  ", v.max_reward);
    s << indent << "reward_range: ";
    Printer<float>::stream(s, indent + "  ", v.reward_range);
    s << indent << "stochastic: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stochastic);
    s << indent << "episodic: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.episodic);
    s << indent << "title: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.title);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RL_MSGS_MESSAGE_RLENVDESCRIPTION_H
