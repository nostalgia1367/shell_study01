#!/bin/sh

:<<'END'
공백이 있는 문자열 쓸 경우에는 변수에 ""를 꼭 써주자
END

result="invalid value"

if [ "$result" = "invalid value" ]; then  #(1)
  echo "ERROR: $result"  1>&2
  exit 1
fi
