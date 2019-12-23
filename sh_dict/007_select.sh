#!/bin/sh

:<<'END'
선택메뉴를 선택하여 해당 메뉴값 처리하기
END


while :
do
  echo "Menu:"
  echo "1) list file"
  echo "2) current directory"
  echo "3) exit"

  read number  #(1)
  case $number in  #(2)
    1)
      ls
      ;;
    2)
      pwd
      ;;
    3)
      exit
      ;;
    *)  #(3)
      echo "Error: Unknown Command"
      ;;
  esac

  echo
done
