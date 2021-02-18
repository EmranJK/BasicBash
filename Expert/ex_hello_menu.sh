#!/bin/bash

  choice1=$1


  menu(){
  echo "UNIX HELP MAIN MENU - (NOVICE)"
  echo ""
  echo "1 -- File and Directory Management Commands"
  echo "2 -- Text Processing Commands"
  echo "3 -- System Status Commands"

    echo ""
  echo "0 -- EG. ex_hello_menu.sh help"
  echo "1 -- EG. ex_hello_menu.sh 1"
  echo "2 -- EG. ex_hello_menu.sh 2"
  echo "3 -- EG. ex_hello_menu.sh 3"
  }

  menu1(){
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

  menu2(){
  echo "TEXT PROCESSING COMMANDS - (NOVICE)"
  echo ""
  echo "NOTE: If the file is in the current directory then just type the name of the file, otherwise, type the whole path of the file and the file name at the end of the path, eg. mydir/file1. The same thing goes to all the options that require a file in this script."
  echo ""
  echo "1 -- Search a file for a pattern"
  echo "2 -- Count lines, words, and characters in specified files"
  echo "3 -- Display line differences between two files"
  echo "4 -- Exit Program; "

  echo ""
  echo "0 -- EG. ex_text_processing.sh help"
  echo "1 -- EG. ex_text_processing.sh 1 file55 llo*"
  echo "2 -- EG. ex_text_processing.sh 2 file55"
  echo "3 -- EG. ex_text_processing.sh 3"
  echo "4 -- EG. ex_text_processing.sh 4"
  }

  menu3(){
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



  if [ $choice1 -gt 4 ] || [ $choice1 -lt 1 ] || [ $choice1 -ne "help" ] || [ ! -n "$choice1" ]
  then
    clear
    menu
  #elif [ -z "$my_var" ]
  #then
   # menu  
  elif [ $choice1 == 1 ]
  then
    menu1
  elif [ $choice1 == 2 ]
  then
    menu2
  elif [ $choice1 == 3 ]
  then
    menu3
  elif [ $choice1 == "help" ]
  then
    clear
    menu
  fi

