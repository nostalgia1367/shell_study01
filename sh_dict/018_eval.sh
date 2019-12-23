#!/bin/sh

:<<'END'
HTML 파일 태그속에 적힌 명령어 실행처리
END

cmd='pwd'
eval `sed -n "s/<code>\(.*\)<\/code>/\1/p" index2.html`
