#!/bin/sh

:<<'END'
파일 압축시 실행 상태를 표시하는 진행바 표시하기
END

DATA_DIR=/Users/nostalgia/Downloads/seiko.diskstation.me

cd $DATA_DIR   #(1)
# tar cf - bigfile1.dat bigfile2.dat | pv | gzip > archive.tar.gz   #(2) 2개의 파일을 복사
tar cf -  .  | pv | gzip > ./../archive.tar.gz   #(2) 현재폴더를 상위디렉토리에 압축
