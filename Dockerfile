FROM ghcr.io/alpine-ros/alpine-ros:noetic-ros-core

RUN apk add --no-cache \
  git \
  ros-${ROS_DISTRO}-colcon

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
