#!/bin/bash

# Protected Theater IP Address
PT_IP=10.13.14.202

/opt/apps/verodin/planner/backend_console/utils/launch.sh --listen 6002 --ssl-only --vnc ${PT_IP}:5901
