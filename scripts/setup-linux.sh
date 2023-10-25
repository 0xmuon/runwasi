#!/bin/bash
sudo apt -y update
sudo apt install -y pkg-config libsystemd-dev libdbus-glib-1-dev build-essential libelf-dev libseccomp-dev libclang-dev protobuf-compiler

if [ ! -z "$CI" ] && ! mount | grep cgroup; then
    echo "cgroup is not mounted" 1>&2
    exit 1
fi