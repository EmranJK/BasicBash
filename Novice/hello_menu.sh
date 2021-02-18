#!/bin/bash


  echo "UNIX HELP MAIN MENU - (NOVICE)"
  echo ""
  echo "1 -- File and Directory Management Commands"
  echo "2 -- Text Processing Commands"
  echo "3 -- System Status Commands"
  echo "4 -- Exit"
  echo ""
  echo "Enter your choice: "
  read choice1
  echo ""
  echo "----------------------------------------"
  echo ""

while [ $choice1 -gt 4 ] || [ $choice1 -lt 1 ]
  do
    echo "Enter a proper number"
    read choice1
  done

  if [ $choice1 == 1 ]
  then
    bash file_management.sh
  elif [ $choice1 == 2 ]
  then
    bash text_processing.sh
  elif [ $choice1 == 3 ]
  then
    bash system_status.sh
  elif [ $choice1 == 4 ]
  then
    exit 0
  fi

