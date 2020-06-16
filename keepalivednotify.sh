#!/bin/bash

TYPE=$1
NAME=$2
STATE=$3

case $STATE in
        "MASTER")
systemctl start kibana
        exit 0
        ;;
        "BACKUP")
systemctl stop kibana
        exit 0
        ;;
        "FAULT")
        exit 0
        ;;
        *)
        echo "unknown state"
        exit 1
        ;;
esac
