#!/bin/bash

#kill every process called $1
#usage ./killthis.sh firefox
#useful when you did something like not kill your zombie processes *cough*

i=1

while [ $i -lt 100 ]; do
	PS=$(ps -u $USER | grep $1 | awk '{print $1}' | head -$i)
	if [ -z "$PS" ];
	then
		exit
		fi
	kill $PS
	i=$(($i+1))
	done
