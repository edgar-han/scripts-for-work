#!/bin/bash

DIRECTOR_IP=10.13.10.192


git clone https://github.com/novnc/noVNC.git
scp -R noVNC nodeone@${DIRECTOR_IP}:.
ssh nodeone@{DIRECTOR_IP} sudo rm -rf /opt/apps/verodin/planner/backend_console
ssh nodeone@{DIRECTOR_IP} sudo rm -rf /opt/apps/verodin/planner/public/console
ssh nodeone@{DIRECTOR_IP} sudo cp -r /home/nodeone/noVNC /opt/apps/verodin/planner/public/console
ssh nodeone@{DIRECTOR_IP} sudo mv /home/nodeone/noVNC /opt/apps/verodin/planner/backend_console

scp files/console_node.html.erb nodeone@${DIRECTOR_IP}:.
ssh nodeone@{DIRECTOR_IP} sudo rm /opt/apps/verodin/planner/app/views/topology/console_node.html.erb
ssh nodeone@{DIRECTOR_IP} sudo cp -r /home/nodeone/files/console_node.html.erb /opt/apps/verodin/planner/app/views/topology/
ssh nodeone@{DIRECTOR_IP} sudo openssl req -new -x509 -days 365 -nodes -out /opt/apps/verodin/planner/backend_console/utils/self.pem -keyout /opt/apps/verodin/planner/backend_console/utils/self.pem

ssh nodeone@{DIRECTOR_IP} sudo reboot now

## Cleanup
rm -rf noVNC
