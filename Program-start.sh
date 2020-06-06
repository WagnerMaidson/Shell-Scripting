#!/bin/bash

Xdialog --title "Exemple!" --center --stdout --yesno \
"In this example, let's see what you want to do. Do you want to continue with the program?" \
0 0
 
if [ $? = "0" ]; then
  echo "How nice! You continued the program! Congratulations!"
elif [ $? = "1" ]; then
  echo "You left the program ..."
fi