#!/bin/bash

if [ $# -ne 0 ]
then
	echo `python -c "print '=' * 74"`
fi

for Filename in $*
do
	{
	sum_md5=`md5 $Filename`;
	MD5=`echo $sum_md5 | awk -F ' = ' '{print $2}'`

	sum_sha1=`shasum -a 1 $Filename`;
	SHA1=`echo $sum_sha1 | awk -F ' ' '{print $1}'`

	sum_sha256=`shasum -a 256 $Filename`;
	SHA256=`echo $sum_sha256 | awk -F ' ' '{print $1}'`
	} &> /dev/null

	echo "Filename: $Filename"
	if [ ${#MD5} != 0 ]; then
		echo "MD5\t: $MD5"
	else
		echo "MD5\t: Is a directory"
	fi
	echo "SHA1\t: $SHA1"
	echo "SHA256\t: $SHA256"
	echo `python -c "print '=' * 74"`
done
