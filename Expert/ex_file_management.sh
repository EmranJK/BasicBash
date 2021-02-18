#!/bin/bash

  choice1=$1
  file=$2
  path=$3

  menu(){
  echo "FILE AND DIRECTORY MANAGEMENT COMMANDS - (NOVICE)"
  echo ""
  echo "NOTE: If the file is in the current directory then just type the name of the file, otherwise, type the whole path of the file and the file name at the end of the path, eg. mydir/file1. The same thing goes to all the options that require a file in this script."

  echo ""
  echo "1 -- Display the contents of a file"
  echo "2 -- Remove a file"
  echo "3 -- Copy a file"
  echo "4 -- List a file"
  echo "5 -- Size of a file"
  echo "6 -- Exit Program "

  echo ""
  echo "0 -- EG. ex_file_management.sh help"
  echo "1 -- EG. ex_file_management.sh 1 file55"
  echo "2 -- EG. ex_system_status.sh 2 file55"
  echo "3 -- EG. ex_system_status.sh 3 file55  file77"
  echo "4 -- EG. ex_system_status.sh 4 file55"
  echo "5 -- EG. ex_system_status.sh 5 file55"
  echo "5 -- EG. ex_system_status.sh 6"
  }

  if [ $choice1 -gt 6 ] || [ $choice1 -lt 1 ] || [ $choice1 -ne "help" ] || [ ! -n "$choice1" ]
  then
    clear
    menu
  #elif [ -z "$my_var" ]
  #then
   # menu  

  elif [ $choice1 == "help" ]
  then
    clear
    menu
  elif [ $choice1 == 1 ]
  then
    echo ""
    cat $file
    echo ""
  elif [ $choice1 == 2 ]
  then
    rm $file
  elif [ $choice1 == 3 ]
  then
    cp $file $path
  elif [ $choice1 == 4 ]
  then
    echo ""
    ls -l $file
    echo ""
  elif [ $choice1 == 5 ]
  then
    echo ""
    ls -sh $file
    echo ""
  elif [ $choice1 == 6 ]
  then
    exit 0   
  fi


