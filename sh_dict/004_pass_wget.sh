#!/bin/sh

# 암호 입력시 사용자 키 입력표시하지 않고 
# 파일 다운로드하기.

:<<'END'
FTP options:
       --ftp-user=USER         set ftp user to USER.
       --ftp-password=PASS     set ftp password to PASS.
       --no-remove-listing     don't remove `.listing' files.
       --no-glob               turn off FTP file name globbing.
       --no-passive-ftp        disable the "passive" transfer mode.
       --retr-symlinks         when recursing, get linked-to files (not dir).
       --preserve-permissions  preserve remote file permissions.
출처: https://hotdigi.tistory.com/287 [제인모터스는 전기차 / 자율주행차 / 미래차를 위한 연구 진행 중 ]
END

username=soulbreakout
hostname=seiko.diskstation.me:2121

echo -n "Password: "
stty -echo  #(1)
read password  #(2)
stty echo  #(3)

echo

#(4)
#wget -q --password=$password ftp://${username}@${hostname}/web/index2.html

# 아래처럼 -r 이용하여 전체디렉토리 다운로드와 -P 옵션을 이용하여 원하는 경로에 다운로드 가능
wget -q -r   --password=$password ftp://${username}@${hostname}/web/web_images -P /Users/nostalgia/Downloads


# wget -옵션

# -h : 도움말
# -q : output없이 실행
# -b : 백그라운드
# -c : 이어받기
# -P : 원하는 위치에 
# -O : 다운로드 URL에 파라미터 형태일 때 정상적으로 파일 받는 방법

http://www.incodom.kr/Linux/%EA%B8%B0%EB%B3%B8%EB%AA%85%EB%A0%B9%EC%96%B4/wget

# tail -f wget-log
