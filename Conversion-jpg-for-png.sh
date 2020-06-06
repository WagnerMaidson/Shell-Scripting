#!/bin/bash

cd ~/youfile/~

for archive in *
do
	if [ -d $archive ]
	then
		cd $archive
		for content_archive in *
		do
			if [ id $content_archive ]
			then
				#Enter the directory and scan
			else
				#Conversion jpg for png
			fi
		done
	else
		#Conversion jpg for png
	fi
done