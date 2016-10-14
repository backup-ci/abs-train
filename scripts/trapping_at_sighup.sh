#!/bin/bash

trap_func()
{
	ipmitool -H 192.168.1.132 -I lanplus -U root -P 'Huawei12#$' sol deactivate
	end_time=`date +%Y\ %m\ %d\ %H:%M`
	echo "$BrdNo,$User,$start_time,$end_time" >> statistical.cvs
}

BrdNo=132
User=$USER

if [ ! -f statistical.csv ]; then
	echo "BrdNo,User,Start,End" > statistical.csv
fi

trap 'trap_func; exit 0' SIGHUP

start_time=`date +%Y\ %m\ %d\ %H:%M`
ipmitool -H 192.168.1.132 -I lanplus -U root -P 'Huawei12#$' sol deactivate
ipmitool -H 192.168.1.132 -I lanplus -U root -P 'Huawei12#$' sol activate;

# ipmitool exit
end_time=`date +%Y\ %m\ %d\ %H:%M`
echo "$BrdNo,$User,$start_time,$end_time" >> statistical.csv
