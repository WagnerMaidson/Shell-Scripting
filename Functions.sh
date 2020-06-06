#!/bin/bash
# Final Script Shell Example
#
 
Principal() {
  echo "Final example on using shell scripts"
  echo "------------------------------------------"
  echo "Options:"
  echo
  echo "1. Transform file names"
  echo "2. Add a user to the system"
  echo "3. Delete a user in the system"
  echo "4. Delete a user in the system/etc"
  echo "5. Exit example"
  echo
  echo -n "Which option is desired? "
  read option
  case $option in
    1) Transform ;;
    2) Add ;;
    3) Delete ;;
    4) Backup ;;
    5) exit ;;
    *) "Unknown option." ; echo ; Principal ;;
  esac
}
 
Transform() {
  echo -n "For Uppercase or lowercase? [U/l] "
  read var
  if [ $var = "M" ]; then
    echo -n "Which directory? "
    read dir
 
    for x in `/bin/ls` $dir; do
      y=`echo $x | tr '[:lower:]' '[:upper:]'`
      if [ ! -e $y ]; then
        mv $x $y
      fi
    done
 
  elif [ $var = "m" ]; then
    echo -n "Which directory? "
    read dir
 
    for x in `/bin/ls` $dir; do
      y=`echo $x | tr '[:upper:]' '[:lower:]'`
      if [ ! -e $y ]; then
        mv $x $y
      fi
    done
 
  fi
}
 
Add() {
  clear
  echo -n "What is the user name to add? "
  read name
  adduser name
  Principal
}
 
Delete() {
  clear
  echo -n "Which user name to delete? "
  read name
  userdel name
  Principal
}
 
Backup() {
  for x in `/bin/ls` /etc; do
    cp -R /etc/$x /etc/$x.bck
    mv /etc/$x.bck /usr/backup
  done
}
 
Principal