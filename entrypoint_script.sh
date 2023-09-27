#!/bin/bash
set -e

# setup ros environment
source "/opt/ros/$ROS_DISTRO/setup.bash"
if [ -e "/ws/devel/setup.sh" ]; then
    echo "source setup.sh."
    source /ws/devel/setup.sh
else
    echo "The overlay file does not exist."
    cd /ws
    catkin_make
    source /ws/devel/setup.sh
fi
echo "finally we will execute $@"
exec "$@"