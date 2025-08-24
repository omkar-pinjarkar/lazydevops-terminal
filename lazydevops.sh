#!/bin/bash

while true
do
  echo ""
  echo "Welcome to LazyDevOps Terminal"
  echo "1. Show current directory"
  echo "2. Create a file"
  echo "3. Create a folder"
  echo "4. Initialize Git repo"
  echo "5. Commit a file"
  echo "6. Show user and permissions"
  echo "7. Change file permission"
  echo "8. Exit"
  read -p "Enter your choice: " choice

  case $choice in
    1) pwd ;;
    2) read -p "Enter filename: " fname
       touch "$fname"
       echo "File '$fname' created." ;;
    3) read -p "Enter folder name: " dname
       mkdir "$dname"
       echo "Folder '$dname' created." ;;
    4) git init
       echo "Git repo initialized." ;;
    5) read -p "Enter filename to commit: " gfile
       git add "$gfile"
       git commit -m "Added $gfile"
       echo "File '$gfile' committed." ;;
    6) whoami
       id ;;
    7) read -p "Enter filename: " fperm
       chmod +x "$fperm"
       echo "Execution permission added to $fperm" ;;
    8) echo "Exiting..."; break ;;
    *) echo "Invalid option. Try again." ;;
  esac
done
