#!/bin/sh

echo -n "Y또는 N을 눌러주세요. [y/n]: "

tty_state=`stty -g`  #(1)
stty raw  #(2)
char=`dd bs=1 count=1 2> /dev/null`  #(3)
stty "$tty_state"   #(4)

echo

case "$char" in  #(5)
  [yY])
    echo "입력: YES"
    ;;
  [nN])
    echo "입력: NO"
    ;;
  *)
    echo "입력: 다른 키를 눌렀습니다."
    ;;
esac
