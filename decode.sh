#!/bin/sh
urlfile="$@"
urlfiledir=$(dirname ${urlfile})

if [ -e $urlfiledir/result_d.txt ]; then
rm $urlfiledir/result_d.txt
fi

cat $urlfile | while read line;do
	echo $line | nkf -w --url-input | tee -a $urlfiledir/result_d.txt
done