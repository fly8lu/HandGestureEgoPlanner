# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "uav_server: 4 messages, 3 services")

set(MSG_I_FLAGS "-Iuav_server:/home/amov/uav_ws/src/uav_server/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(uav_server_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" ""
)

get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" ""
)

get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Move.srv" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/srv/Move.srv" ""
)

get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" ""
)

get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" ""
)

get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" NAME_WE)
add_custom_target(_uav_server_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uav_server" "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" "uav_server/PositionReference:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)
_generate_msg_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)
_generate_msg_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)
_generate_msg_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)

### Generating Services
_generate_srv_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)
_generate_srv_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)
_generate_srv_cpp(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
)

### Generating Module File
_generate_module_cpp(uav_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(uav_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(uav_server_generate_messages uav_server_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Move.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_cpp _uav_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uav_server_gencpp)
add_dependencies(uav_server_gencpp uav_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uav_server_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)
_generate_msg_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)
_generate_msg_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)
_generate_msg_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)

### Generating Services
_generate_srv_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)
_generate_srv_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)
_generate_srv_eus(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
)

### Generating Module File
_generate_module_eus(uav_server
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(uav_server_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(uav_server_generate_messages uav_server_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Move.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_eus _uav_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uav_server_geneus)
add_dependencies(uav_server_geneus uav_server_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uav_server_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)
_generate_msg_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)
_generate_msg_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)
_generate_msg_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)

### Generating Services
_generate_srv_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)
_generate_srv_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)
_generate_srv_lisp(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
)

### Generating Module File
_generate_module_lisp(uav_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(uav_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(uav_server_generate_messages uav_server_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Move.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_lisp _uav_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uav_server_genlisp)
add_dependencies(uav_server_genlisp uav_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uav_server_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)
_generate_msg_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)
_generate_msg_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)
_generate_msg_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)

### Generating Services
_generate_srv_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)
_generate_srv_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)
_generate_srv_nodejs(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
)

### Generating Module File
_generate_module_nodejs(uav_server
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(uav_server_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(uav_server_generate_messages uav_server_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Move.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_nodejs _uav_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uav_server_gennodejs)
add_dependencies(uav_server_gennodejs uav_server_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uav_server_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)
_generate_msg_py(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)
_generate_msg_py(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)
_generate_msg_py(uav_server
  "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg"
  "${MSG_I_FLAGS}"
  "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)

### Generating Services
_generate_srv_py(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)
_generate_srv_py(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Move.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)
_generate_srv_py(uav_server
  "/home/amov/uav_ws/src/uav_server/srv/Mode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
)

### Generating Module File
_generate_module_py(uav_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(uav_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(uav_server_generate_messages uav_server_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Mode.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMode.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/Move.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/TopicMove.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/PositionReference.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/srv/UavGesture.srv" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/amov/uav_ws/src/uav_server/msg/ControlCommand.msg" NAME_WE)
add_dependencies(uav_server_generate_messages_py _uav_server_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uav_server_genpy)
add_dependencies(uav_server_genpy uav_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uav_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uav_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(uav_server_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/uav_server
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(uav_server_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uav_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(uav_server_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/uav_server
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(uav_server_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uav_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(uav_server_generate_messages_py std_msgs_generate_messages_py)
endif()
