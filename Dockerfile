# Use an existing base image
FROM osrf/ros:noetic-desktop-full

# Set environment variables if needed
#ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# Update and install additional libraries using apt-get
RUN apt-get update && \
    apt-get install -y \
    ros-noetic-arbotix-* \
    ros-noetic-move-base \
    ros-noetic-map-server ros-noetic-fake-localization \
    ros-noetic-amcl \
    # ros-indigo-turtlebot-bringup \
    # ros-indigo-turtlebot-create-desktop ros-indigo-openni-* \
    # ros-indigo-openni2-* ros-indigo-freenect-* ros-indigo-usb-cam \
    # ros-indigo-laser-* ros-indigo-hokuyo-node \
    # ros-indigo-audio-common gstreamer0.10-pocketsphinx \
    # ros-indigo-pocketsphinx ros-indigo-slam-gmapping \
    # ros-indigo-joystick-drivers python-rosinstall \
    # ros-indigo-orocos-kdl ros-indigo-python-orocos-kdl \
    # python-setuptools ros-indigo-dynamixel-motor-* \
    # libopencv-dev python-opencv ros-indigo-vision-opencv \
    # ros-indigo-depthimage-to-laserscan ros-indigo-arbotix-* \
    # ros-indigo-turtlebot-teleop ros-indigo-move-base \
    # ros-indigo-map-server ros-indigo-fake-localization \
    # ros-indigo-amcl git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set any other configurations or workdir if necessary
WORKDIR /ws

# You can copy your application files into the image if needed
# COPY . /ws/src/rbx1

# WORKDIR /ws/src/rbx1



# You can also specify entrypoint if needed
ENTRYPOINT ["./entrypoint_script.sh"]

# Define the command to run your application (if applicable)
CMD ["/bin/bash"]
