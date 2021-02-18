#!/bin/bash



file_management(){
  echo "FILE AND DIRECTORY MANAGEMENT COMMANDS - (NOVICE)"
  echo ""
  echo "NOTE: If the file is in the current directory then just type the name of the file, otherwise, type the whole path of the file and the file name at the end of the path, eg. mydir/file1. The same thing goes to all the options that require a file in this script."

  echo ""
  echo "1 -- Display the contents of a file"
  echo "2 -- Remove a file"
  echo "3 -- Copy a file"
  echo "4 -- List a file"
  echo "5 -- Size of a file"
  echo "6 -- Quit -- Return to main Menu "
  echo ""
  echo "Enter your choice: "
  read choice2
  echo ""
  echo "----------------------------------------"
  echo ""

  while [ $choice2 -gt 6 ] || [ $choice2 -lt 1 ]
  do
    echo "Enter a proper number"
    read choice2
  done


  if [ $choice2 == 1 ]
  then
    echo "What is the path of the file?"
    read path
    echo ""
    cat $path
    echo ""
    file_management
  elif [ $choice2 == 2 ]
  then
    echo "What is the path of the file?"
    read path
    rm $path
    echo ""
    file_management
  elif [ $choice2 == 3 ]
  then
    echo "What is the path of the file?"
    read path
    echo "What is the path that you want to copy the file to?"
    read path2
    cp $path $path2
    echo ""
    file_management

  elif [ $choice2 == 4 ]
  then
    echo "What is the path of the file?"
    read path
    echo ""
    ls -l $path
    echo ""
    file_management
  elif [ $choice2 == 5 ]
  then
    echo "What is the path of the file?"
    read path
    echo ""
    ls -sh $path
    echo ""
    file_management
  elif [ $choice2 == 6 ]
  then
    bash hello_menu.sh   
  fi

}

file_management