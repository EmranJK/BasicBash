#!/bin/bash


system_status(){
  echo "SYSTEM STATUS COMMANDS - (NOVICE)"
  echo ""
  echo "NOTE: If the file is in the current directory then just type the name of the file, otherwise, type the whole path of the file and the file name at the end of the path, eg. mydir/file1. The same thing goes to all the options that require a file in this script."
  echo ""
  echo "1 -- Display the current date and time"
  echo "2 -- Current disk usage"
  echo "3 -- List current local and environmental"
  echo "4 -- Display process status information"
  echo "5 -- Quit -- Return to Main Menu"
  echo ""
  echo "Enter your choice: "
  read choice4


  while [ $choice4 -gt 5 ] || [ $choice4 -lt 1 ]
  do
    echo "Enter a proper number"
    read choice4
  done

  if [ $choice4 == 1 ]
  then
    echo ""
    date
    echo ""
    system_status
  elif [ $choice4 == 2 ]
  then
    echo ""
    df
    echo ""
    system_status
  elif [ $choice4 == 3 ]
  then
    echo ""
    printenv
    echo ""
    system_status
  elif [ $choice4 == 4 ]
  then
    echo ""
    ps -la
    echo ""
    system_status
  elif [ $choice4 == 5 ]
  then
    bash hello_menu.sh
  fi
}

system_status