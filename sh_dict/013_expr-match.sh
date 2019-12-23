#!/bin/sh

:<<'END'
HTML파일에서 특정 속성값 얻기
END


quote="[\"']"   #(1)
match="[^\"']*"  #(2)

#echo $quote
#echo $match

while read line
do
  #(3)
  href=`expr "$line" : ".*href=${quote}\(${match}\)${quote}.*"`
  if [ $? -eq 0 ]; then
    echo $href
  fi
done < index2.html
