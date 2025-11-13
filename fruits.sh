#!/bin/bash
PS3="Choose your favorite fruit: "
select fruit in Apple Mango Orange Grapes Quit
do
  case $fruit in
    Apple|Mango|Orange|Grapes)
      echo "You chose $fruit"
      ;;
    Quit)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid selection"
      ;;
  esac
done