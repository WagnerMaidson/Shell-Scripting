#!/bin/bash

if [ -e $linux ]
then
  echo 'The $linux variable exists.'
else
  echo 'The $linux variable does not exist.'
fi