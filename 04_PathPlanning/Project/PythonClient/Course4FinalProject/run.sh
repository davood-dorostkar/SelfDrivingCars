#!/bin/bash
set -e

bash -c "python module_7.py" &
../../CarlaUE4.sh /Game/Maps/Course4 -windowed -carla-server -benchmark -fps=20 -ResX=640 -ResY=480 