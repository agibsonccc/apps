#!/bin/sh

MAX=1500

stopInstances() {
  for ((j=$1; j<=MAX; j++)); do
  	local N=`printf "%04d\n" "$j"`
  	echo "Stopping instance n$N"
    gcutil deleteinstance n$N --zone=europe-west1-a --nodelete_boot_pd --force --nosynchronous_mode
  done
}

stopInstances 2

echo "n0001 not stopped, it can be stopped with 'gcutil deleteinstance n0001 --zone=europe-west1-a --nodelete_boot_pd --force'"



