#!/bin/bash

# copies and runs this script on actor

EDGARS_PUB_KEY=

ACTOR_IP=$1
ACTOR_USER=nodeone

function show_usage {
  echo "Usage:"
  echo "$0 <ACTOR_IP>"
}

function run_this_on_remote {
  scp ../$0 ${ACTOR_USER}@${ACTOR_IP}:.
  ssh ${ACTOR_USER}@${ACTOR_IP} ./$0
}

if [ -z "$ACTOR_IP" ]
then
  show_usage
fi


