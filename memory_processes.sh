#!/bin/bash

if [ ! -d log ]
then
	mkdir log
fi

memory_processes(){
processes=$(ps -e -o pid --sort -size | head -n 11 | grep [0-9])
for pid in $processes
do
    processes_name=$(ps -p $pid -o comm=)
    echo -n $(date +%F,%H:%M:%S,) >> log/$processes_name.log
    size_processes=$(ps -p $pid -o size | grep [0-9])
    echo "$(bc <<< "scale=2;$size_processes/1024") MB" >> log/$processes_namelog
done
}

memory_processes
if [ $? -eq 0 ]
then
	echo "Files were successfully saved"
else
	echo "There was a problem saving files"
fi