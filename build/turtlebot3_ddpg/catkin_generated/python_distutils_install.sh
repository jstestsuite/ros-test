#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/justin/ros_test/src/turtlebot3_ddpg"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/justin/ros_test/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/justin/ros_test/install/lib/python2.7/dist-packages:/home/justin/ros_test/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/justin/ros_test/build" \
    "/usr/bin/python2" \
    "/home/justin/ros_test/src/turtlebot3_ddpg/setup.py" \
    build --build-base "/home/justin/ros_test/build/turtlebot3_ddpg" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/justin/ros_test/install" --install-scripts="/home/justin/ros_test/install/bin"
