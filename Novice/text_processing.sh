#!/bin/bash


text_processing(){
  echo "TEXT PROCESSING COMMANDS - (NOVICE)"
  echo ""
  echo "NOTE: If the file is in the current directory then just type the name of the file, otherwise, type the whole path of the file and the file name at the end of the path, eg. mydir/file1. The same thing goes to all the options that require a file in this script."
  echo ""
  echo "1 -- Search a file for a pattern"
  echo "2 -- Count lines, words, and characters in specified files"
  echo "3 -- Display line differences between two files"
  echo "4 -- Quit -- Return to Main Menu"
  echo ""
  echo "Enter your choice: "
  read choice3
  echo ""
  echo "----------------------------------------"
  echo ""

  while [ $choice3 -gt 4 ] || [ $choice3 -lt 1 ]
  do
    echo "Enter a proper number"
    read choice3
  done

  if [ $choice3 == 1 ]
  then
    echo "What is the path of the file?"
    read file
    echo "Type the pattern, eg. ^hel..$, etc."
    read pattern
    echo ""
    cat $file | grep $pattern 
    echo ""
    text_processing
  elif [ $choice3 == 2 ]
  then
    echo "What is the path of the file?"
    read file
    echo ""
    wc $file
    echo ""
    text_processing
  elif [ $choice3 == 3 ]
  then
    echo "What is the path of the first file?"
    read file1
    echo "What is the path of the second file?"
    read file2
    echo ""
    expr "$(wc -l < $file1)" - "$(wc -l < $file2)"
    echo ""
    text_processing
  elif [ $choice3 == 4 ]
  then
    bash hello_menu.sh
  fi
}

text_processing