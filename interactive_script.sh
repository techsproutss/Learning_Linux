#!/bin/bash

# Example 1
# echo "Enter your name:"
# read name
# echo "Hello, $name! Welcome to Linux scripting."

# Example 2
# read -p "Enter your age: " age
# echo "You are $age years old."

# Example 3
# read -sp "Enter your password: " pass
# echo
# echo "Password entered successfully."

# read -t 5 -p "Enter your name within 5 seconds: " name
# echo "Name: $name"

# read -p "Enter your first and last name: " fname lname
# echo "Hello, $fname $lname"

#!/bin/bash
# read -p "Do you want to delete all log files? (y/n): " choice

# if [ "$choice" = "y" ] || [ "$choice" = "Y" ]; then
#     rm -rf *.log
#     echo "All log files deleted."
# else
#     echo "Operation cancelled."
# fi

# read -p "Enter a number: " num
# if [[ "$num" =~ ^[0-9]+$ ]]; then
#   echo "You entered a valid number."
# else
#   echo "Invalid input! Please enter digits only."
# fi

#!/bin/bash
echo "Welcome to File Manager"
read -p "Enter directory path: " dir

if [ ! -d "$dir" ]; then
  echo "Directory not found!"
  exit 1
fi

cd "$dir"
echo "You are now in $dir"

PS3="Choose an option: "
select option in "List Files" "View Disk Usage" "Show Hidden Files" "Exit"
do
  case $option in
    "List Files") ls ;;
    "View Disk Usage") du -sh * ;;
    "Show Hidden Files") ls -a ;;
    "Exit") echo "Goodbye!"; break ;;
    *) echo "Invalid option!" ;;
  esac
done