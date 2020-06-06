#!/bin/bash

converts_Image(){
cd ~/youfile/~

if [ ! -d png ]
then
    mkdir png
fi

for image in *.jpg
do
   local image_withoutextension=$(ls $image | awk -F. '{ print $1 }')
    convert $image_withoutextension.jpg png/$image_withoutextension.png
done
}

converts_Image 2>conversion_ errors.txt
if [ $? -eq 0 ]
then
	echo "Conversion performed successfully"
else
	echo "There was a failure in the process"
fi