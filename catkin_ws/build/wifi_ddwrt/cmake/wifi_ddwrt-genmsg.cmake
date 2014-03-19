# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "wifi_ddwrt: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iwifi_ddwrt:/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg;-Istd_msgs:/opt/ros/groovy/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(wifi_ddwrt_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/Network.msg;/opt/ros/groovy/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wifi_ddwrt
)
_generate_msg_cpp(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/groovy/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wifi_ddwrt
)
_generate_msg_cpp(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wifi_ddwrt
)

### Generating Services

### Generating Module File
_generate_module_cpp(wifi_ddwrt
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wifi_ddwrt
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(wifi_ddwrt_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(wifi_ddwrt_generate_messages wifi_ddwrt_generate_messages_cpp)

# target for backward compatibility
add_custom_target(wifi_ddwrt_gencpp)
add_dependencies(wifi_ddwrt_gencpp wifi_ddwrt_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wifi_ddwrt_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/Network.msg;/opt/ros/groovy/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wifi_ddwrt
)
_generate_msg_lisp(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/groovy/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wifi_ddwrt
)
_generate_msg_lisp(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wifi_ddwrt
)

### Generating Services

### Generating Module File
_generate_module_lisp(wifi_ddwrt
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wifi_ddwrt
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(wifi_ddwrt_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(wifi_ddwrt_generate_messages wifi_ddwrt_generate_messages_lisp)

# target for backward compatibility
add_custom_target(wifi_ddwrt_genlisp)
add_dependencies(wifi_ddwrt_genlisp wifi_ddwrt_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wifi_ddwrt_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/SiteSurvey.msg"
  "${MSG_I_FLAGS}"
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/Network.msg;/opt/ros/groovy/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt
)
_generate_msg_py(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/AccessPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/groovy/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt
)
_generate_msg_py(wifi_ddwrt
  "/home/mig-ly/catkin_ws/src/wifi_ddwrt/msg/Network.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt
)

### Generating Services

### Generating Module File
_generate_module_py(wifi_ddwrt
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(wifi_ddwrt_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(wifi_ddwrt_generate_messages wifi_ddwrt_generate_messages_py)

# target for backward compatibility
add_custom_target(wifi_ddwrt_genpy)
add_dependencies(wifi_ddwrt_genpy wifi_ddwrt_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS wifi_ddwrt_generate_messages_py)


debug_message(2 "wifi_ddwrt: Iflags=${MSG_I_FLAGS}")


if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wifi_ddwrt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/wifi_ddwrt
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(wifi_ddwrt_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wifi_ddwrt)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/wifi_ddwrt
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(wifi_ddwrt_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/wifi_ddwrt
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(wifi_ddwrt_generate_messages_py std_msgs_generate_messages_py)
