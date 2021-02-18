#!/bin/bash

  choice1=$1
  file=$2
  pattern=$3

  menu(){
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

  if [ $choice1 -gt 4 ] || [ $choice1 -lt 1 ] || [ $choice1 -ne "help" ] || [ ! -n "$choice1" ]
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
    cat $file | grep $pattern 
    echo ""
  elif [ $choice1 == 2 ]
  then
    echo ""
    wc $file
    echo ""
  elif [ $choice1 == 3 ]
  then
    echo "What is the path of the first file?"
    read file1
    echo "What is the path of the second file?"
    read file2
    echo ""
    echo ""
    expr "$(wc -l < $file1)" - "$(wc -l < $file2)"
    echo ""
  elif [ $choice1 == 4 ]
  then
    exit 0
  fi


