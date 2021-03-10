#!/bin/bash

DIRECTOR_IP=10.13.10.192
SSH_PREFIX="ssh nodeone@${DIRECTOR_IP}"

# prepare this one time, will require director password if not set
ssh-copy-id nodeone@${DIRECTOR_IP}

$SSH_PREFIX bash -c "cat<<EOF>> ~/.bashrc
alias cdlogs=\"cd /opt/app/verodin/planner/log/\"
alias system_logs=\"tail -f /opt/app/verodin/planner/log/verodin_system_log\"
alias node_logs=\"tail -f /opt/app/verodin/planner/log/node_log\"
cd /opt/apps/verodin/planner/log/
EOF
"

echo "Done."
