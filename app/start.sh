#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

# using local electron module instead of the global electron lets you
# easily control specific version dependency between your app and electron itself.
# the syntax below starts an X istance with ONLY our electronJS fired up,
# it saves you a LOT of resources avoiding full-desktops envs

export XDG_RUNTIME_DIR="/run/shm/wayland"
mkdir -p "$XDG_RUNTIME_DIR"
chmod 0700 "$XDG_RUNTIME_DIR"

if [ "$DEMO_MODE" = "standalone" ]
then
  while true; do
    glmark2-es2-drm
  done
fi
if [ "$DEMO_MODE" = "desktop" ]
then
  while true; do
    /usr/bin/weston --backend=drm-backend.so --tty=1 --log=/var/log/weston.log
    sleep 10
    # now you can open the terminal and run glmark2-es2-WAYLAND
  done
fi
