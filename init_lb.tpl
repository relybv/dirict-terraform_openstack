#!/bin/bash
echo "Start of boot script"
export FACTER_member_ips="${appl1_address},${appl2_address}"
export FACTER_member_names="${appl1_name}, ${appl2_name}"
echo "Memers are: $FACTER_member_names, $FACTER_member_ips"

export FACTER_monitor_address="${monitor_address}"
echo "Rsyslog server is: $FACTER_monitor_address"

wget https://raw.githubusercontent.com/relybv/dirict-role_lb/master/files/bootme.sh && bash bootme.sh
