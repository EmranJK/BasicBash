#!/bin/bash

  choice1=$1


  menu(){
  echo "SYSTEM STATUS COMMANDS - (NOVICE)"
  echo ""
  echo "NOTE: If the file is in the current directory then just type the name of the file, otherwise, type the whole path of the file and the file name at the end of the path, eg. mydir/file1. The same thing goes to all the options that require a file in this script."
  echo ""
  echo "1 -- Display the current date and time"
  echo "2 -- Current disk usage"
  echo "3 -- List current local and environmental"
  echo "4 -- Display process status information"
  echo "5 -- Quit -- Exit Program"

  echo ""
  echo "0 -- EG. ex_system_status.sh help"
  echo "1 -- EG. ex_system_status.sh 1"
  echo "2 -- EG. ex_system_status.sh 2"
  echo "3 -- EG. ex_system_status.sh 3"
  echo "4 -- EG. ex_system_status.sh 4"
  echo "5 -- EG. ex_system_status.sh 5"
  }

  if [ $choice1 -gt 5 ] || [ $choice1 -lt 1 ] || [ $choice1 -ne "help" ] || [ ! -n "$choice1" ]
  then
    clear
    menu
  elif [ $choice1 == "help" ]
  then
    clear
    menu
  elif [ $choice1 == 1 ]
  then
    echo ""
    date
    echo ""
  elif [ $choice1 == 2 ]
  then
    echo ""
    df
    echo ""
  elif [ $choice1 == 3 ]
  then
    echo ""
    printenv
    echo ""
  elif [ $choice1 == 4 ]
  then
    echo ""
    ps -la
    echo ""
  elif [ $choice1 == 5 ]
  then
    exit 0
  fi


