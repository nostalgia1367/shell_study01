#!/bin/sh

:<<'END'
basename 명령어를 이용하여 현재 파일명 표시

ex: 명령어 사용법을 표시할 때 현재 파일명 표시할 때 간단하게 사용됨.

END

prog=$(basename "$0")  #(1)

# 인수가 하나가 아니면 도움말을 표시하고 종료
if [ $# -ne 1 ]; then  #(2)
  echo "Usage: $prog <string>" 1>&2  #(3)
  exit 1
fi

# 명령행 인수 $1 표시
echo "Start: $prog ..."
echo " Input Argument: $1"  #(4)
echo "Stop: $prog ..."
