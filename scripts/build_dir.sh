#!/bin/bash -e
if [ "$#" = "0" ] ; then
    echo $0 dir
    exit 2
fi

FILES=$(ls $1/*.gz)

for i in $FILES ; do
    build_lx.sh $i
    if [ "$?" != "0" ] ; then
       echo "error in packing $i"
       exit 2
    fi
done
