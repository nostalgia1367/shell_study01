#!/bin/sh

:<<'END'
메시지 표시 문자색을 바꾸거나 반전
END

echo "Script Start."

# 배경을 회색(47), 문자색을 빨강(31)로 바꿈
echo -e "\033[47;31m Important Message \033[0m"  #(1)

echo "Script End."
