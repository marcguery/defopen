#!/bin/bash
filenumber=$#
files=("$@")
if [ $filenumber -gt 2 ];then
	read -p "Will open: '${files[*]}'"
fi
for ((findex = 0; findex < $filenumber; findex++));do
	xdg-open "${files[$findex]}"
done
