#!/bin/bash
isEnabled=$(sysctl -a 2>/dev/null | grep all.disable_ipv6)
echo $isEnabled
if [[ $isEnabled == "net.ipv6.conf.all.disable_ipv6 = 0" ]]
then
    sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
    sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
    echo "ivp6 disabled successfully"
else
    sudo sysctl -w net.ipv6.conf.all.disable_ipv6=0
    sudo sysctl -w net.ipv6.conf.default.disable_ipv6=0
    echo "ivp6 enabled successfully, kindly reconnect to network."
fi
