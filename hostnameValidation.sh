#! /bin/bash
NAME=$HOSTNAME
IP=$(ip route get 8.8.8.8 | awk '/8.8.8.8/ {print $NF}')

if [ "$IP" == 10.1.1.113 ]; then
        NAME=CEBDBJAX01
elif [ "$IP" == 10.2.1.113 ]; then
        NAME=CEBDBBDU01
        else
        NAME=$HOSTNAME
fi
echo -e "The hostname of this machine is: "$NAME""
