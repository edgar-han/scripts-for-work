#!/bin/bash


cat<<EOF>> ~/.bashrc
alias cdlogs='cd /opt/apps/verodin/node/log/'
alias fupgrade='tail -f /opt/apps/verodin/node/log/verodin_upgrade_migration'
alias fpullcheck='tail -f /opt/apps/verodin/node/log/verodin_pull_check'
EOF

# This must be last
echo "cd /opt/apps/verodin/node/log/" >> ~/.bashrc
