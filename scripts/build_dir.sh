#!/bin/bash
if [ "$#" = "0" ] ; then
	echo $0 dir
fi

FILES=$(ls $1/*.gz)

for i in $FILES ; do
build_lx.sh $i
done
