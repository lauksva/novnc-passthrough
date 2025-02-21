#!/bin/sh

# Check if environment variables are set

if [ -z "$CONTAINER_PORT" ]; then
    echo "CONTAINER_PORT is not set. Exiting."
    exit 1
fi

if [ -z "$VNC_HOST" ]; then
    echo "VNC_HOST is not set. Exiting."
    exit 1
fi

if [ -z "$VNC_PORT" ]; then
    echo "VNC_PORT is not set. Exiting."
    exit 1
fi

# Start the websockify server
exec websockify --web /usr/share/novnc "$CONTAINER_PORT" "$VNC_HOST:$VNC_PORT"
