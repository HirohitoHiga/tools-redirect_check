#!/bin/sh
urlfile="$@"
urlfiledir=$(dirname ${urlfile})

if [ -e $urlfiledir/result.txt ]; then
rm $urlfiledir/result.txt
fi

i=0
cat $urlfile | while read line;do
	i=$(($i + 1))
	url=$(curl -I -Ls -o /dev/null -w %{url_effective} $line)
	echo $i:"$url"
	echo $url >> $urlfiledir/result.txt
done