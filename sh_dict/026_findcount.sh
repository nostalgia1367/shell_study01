#!/bin/sh

#:targetdir="/Users/nostalgia/Documents/workspace-git/shell_study01/sh_dict"
targetdir="$(dirname "$0")"

:<<'END'
디렉토리에 있는 파일과 디렉토리 수 조사하기
END

#현재경로는...
pwd 

#(1)
filecount=$(find "$targetdir" -maxdepth 1 -type f -print | wc -l)
# filecount2=$(find "$targetdir" -maxdepth 1 -type f -print)


dircount=$(find "$targetdir" -maxdepth 1 -type d -print | wc -l)

dircount=$(expr $dircount - 1)  #(2)

echo "대상 디렉터리: $targetdir"
echo "파일 수: $filecount"
echo "파일 수2: " $filecount2
echo "디렉터리 수: $dircount"
