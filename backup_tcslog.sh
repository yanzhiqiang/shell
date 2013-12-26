#!/bin/sh
date_H=`date +%H`
date_t=$date_H;
time_interval=8
let date_t=($date_t+$time_interval)%24;
echo $date_t;
while [ 1 ]
do
	sleep 5
	date_H=`date +%H`
	if [ $date_H -eq $date_t  ];then
		temp_name=`date +%y%m%d%H`
		target_name="tcs_log_"$temp_name".tar.gz"
		source_name="tcs_log*.txt"
		tar -zcvf $target_name $source_name
		let date_t=($date_t+$time_interval)%24
	else
		sleep 3
	fi
done
