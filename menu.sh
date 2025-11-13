#!/bin/bash
while true
do
  echo "========== SYSTEM MENU =========="
  echo "1. Display current date and time"
  echo "2. Show current directory"
  echo "3. List files"
  echo "4. Exit"
  echo "================================="
  read -p "Enter your choice [1-4]: " choice

  case $choice in
    1) date ;;
    2) pwd ;;
    3) ls ;;
    4) echo "Exiting..."; exit ;;
    *) echo "Invalid option! Please try again." ;;
  esac
  echo
done
