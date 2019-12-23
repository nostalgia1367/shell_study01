#!/bin/sh


:<<'END'
지역변수를 함수내 정의하여 지역변수/전역변수 처리하기
END
DIR=/var/tmp

ls_home(){
  local DIR  #(1)

  DIR=~/$1  #(2)
  echo "ls_home 디렉토리: $DIR"
  ls $DIR
}

ls_home Downloads  #(3)

echo "\n\n디렉토리: $DIR"   #(4)
ls $DIR
