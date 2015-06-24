#!/bin/bash


myid=$(date +%s)
myfilename=/tmp/bibUtex.$myid.tmp

for aux in bu*.aux
do
	echo bibtex "$aux" >> $myfilename
	bibtex "$aux" >> $myfilename
done

cat $myfilename
echo ""
echo 'Warnings:'
grep -n Warning $myfilename
