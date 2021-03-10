#!/bin/bash

#THEATER_IP=10.13.14.202
#THEATER_IP=10.13.7.252
THEATER_IP=$1
SSH_PREFIX="ssh nodeone@${THEATER_IP}"
LOG_DIR="/opt/apps/verodin/node/log"

if [ -z "$THEATER_IP" ]
then
  echo "ERROR: Provide Theater IP Address"
  exit -1
fi

# prepare this one time, will require director password if not set
ssh-copy-id nodeone@${THEATER_IP}

$SSH_PREFIX bash -c "cat<<EOF>> ~/.bashrc
alias cdlogs=\"cd $LOG_DIR\"
alias backend_logs=\"tail -f ${LOG_DIR}/verodin_backend\"
alias upgrade_logs=\"tail -f ${LOG_DIR}/verodin_upgrade_migration\"
cd $LOG_DIR
EOF
"

./upload-pt-scripts.sh $THEATER_IP
./run-pt-scripts-remote.sh $THEATER_IP

echo "Done."
