#!/bin/bash

convert_image(){
	local path_image=$1
	local image_withoutextension=$(ls $path_image | awk -F. '{ print $1 }')
	convert $image_withoutextension.jpg $image_withoutextension.png
}

sweep_directory(){
	cd $1
	for archive in *
	do	
		local file_path=$(find ~/Downloads/~ -name $archive)
		if [ -d $caminho_arquivo ]
		then
			sweep_directory $file_path
		else	
			convert_image $file_path
		fi	
	done
}		

sweep_directory ~/Downloads/~
if [ $? -eq 0 ]
then
	echo "Conversion performed successfully"
else
	echo "There was a problem in the conversation"
fi	