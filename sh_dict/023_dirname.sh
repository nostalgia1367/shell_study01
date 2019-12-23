#!/bin/sh

:<<'END'
dirname /path를 이용하면 해당파일의 경로까지 가져올 수 있다.
END

cd "$(dirname "$0")"   #(1)

./023_start.sh
./023_end.sh
