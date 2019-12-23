#!/bin/sh

:<<'END'
쉘 스크립트 처리가 끝나고 원래 디렉토리로 돌아가려면 처음에 있던 디렉토리명을 저장해둬야 한다.
하지만 원래 있던 곳을 저장하지 않아도 간단하게 돌아갈 수 있는 방법이 노재한다.
서브셸을 이용하면 된다.

서브셸은 현재 셸 안에서 새롭게 실행되는 셸을 말한다.
현재 디렉토리가 변경되거나 변수값이 변경해도  영향을 주지 않는다.
END


# 괄호 안은 서브셸
#(1)
(
  echo "Archive: /var/tmp/archive.tar"
  cd /var/tmp
  tar cvf archive.tar *.txt
)

# 스크립트 실행은 현재 디렉터리에서 처리
echo "Start: command.sh"
./command.sh
