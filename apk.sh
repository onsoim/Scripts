#! /bin/bash

if [ $# -ne 2 ];then
	echo "usage: apk [ d | decode ] *.apk"
	echo "usage: apk [ b | build ] <dir>"
else
	if [ "$1" == "d" ];then
		echo "decompile \"$2\""
		apktool d $2
	elif [ "$1" == "b" ];then
		echo "build \"$2\""
		apktool b $2
	fi
fi




:<<'END'
adb connect 127.0.0.1:62001 # connect to nox emulator

adb shell pm list packages -f | grep base.apk

apktool b apktool/ -o tmp.apk
apksign tmp.apk candy.apk && rm tmp.apk

adb uninstall com.king.candycrushsaga
adb install candy.apk

END