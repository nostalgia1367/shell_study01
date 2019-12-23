#!/bin/sh

${TMPDIR:=/tmp}
${TDIR:=/tmp}

cd  ${USRDIR:=/Users/nostalgia}  #(1)
ls $USRDIR
#tar xzf largefile.tar.gz

echo "TMPDIR to $TMPDIR."
echo "TDIR to $TDIR."
echo  "ls to $USRDIR."
