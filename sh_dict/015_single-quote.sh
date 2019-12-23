#!/bin/sh

:<<'END'
작은따옴표안에 작은따옴표 사용하기
END

price=100
str='It costs $'$price'? I can'\''t believe it!'  #(1)
str2="I can't ."
echo $str
echo $str2
