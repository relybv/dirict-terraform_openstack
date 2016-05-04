#!/bin/bash
echo "Start of boot script"
export FACTER_monitor_address="${monitor_address}"
echo "Rsyslog server is: $FACTER_monitor_address"

wget https://raw.githubusercontent.com/relybv/dirict-role_db/master/files/bootme.sh && bash bootme.sh
