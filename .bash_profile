
function prompt {
	# Define local colors
	local Black="\[\e[0;30m\]"
	local RED="\[\e[0;31m\]"
	local GREEN="\[\e[0;32m\]"
	local BROWN="\[\e[0;33m\]"
	local BLUE="\[\e[0;34m\]"
	local PURPLE="\[\e[0;35m\]"
	local CYAN="\[\e[0;36m\]"

	local LIGHT_BLACK="\[\e[1;30m\]"
	local LIGHT_RED="\[\e[1;31m\]"
	local LIGHT_GREEN="\[\e[1;32m\]"
	local YELLOW="\[\e[1;33m\]"
	local LIGHT_BLUE="\[\e[1;34m\]"
	local LIGHT_PURPLE="\[\e[1;35m\]"
	local LIGHT_CYAN="\[\e[1;36m\]"

	local END="\[\e[0m\]"

	# Prompt Settings (default: PS1="\h:\W \u$ ")
	#	\d - Current date
	#	\h - Host name
	#	\t - Current time
	#	\u - User name
	#	\W - Current working directory
	#	\w = Current working directory with full path
	#	\# - Command number
	export PS1="\u:$LIGHT_CYAN\W$END $ "
}prompt

function set_capture {
	# remove shadow(margin around window) when take screenshot
	local res="$(defaults read com.apple.screencapture disable-shadow)"
	[[ $res == 0 ]] && flag="TRUE" || flag="FALSE"
	defaults write com.apple.screencapture disable-shadow -bool $flag
	killall SystemUIServer
}

function set_adb {
	local nox="127.0.0.1:62001"
	adb connect $nox
	adb devices
}


# ADD PATH
PATH=${PATH}:/Volumes/BaseQi/Github/Scripts
PATH=${PATH}:/Volumes/BaseQi/Github/Scripts/tools
export PATH


# -*- PERSONAL COMMAND -*-
alias l="ls"
alias ll="ls -al"
alias ln="ls | sort -V" # sort with number (like file1, file2, file10, file21)

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias shell="source /Volumes/BaseQi/Github/Scripts/.bash_profile"

alias .hash="sh hashing.sh"
alias .port="sudo lsof -i TCP:"


# -*- DOCKER COMMAND -*-
alias apktool="shell && docker run --rm -it -v $(pwd):/apk apktool apktool"
alias apksign="shell && docker run --rm -it -v $(pwd):/apk motizen-sign sh Sign.sh"
alias django="shell && docker run --rm -it -v $(pwd):/application -p 80:8080 django python manage.py runserver 0.0.0.0:8080"
alias dev_python3="shell && docker run --rm -it -v $(pwd):/python3 python3 python3"


# -*- cd path -*-
alias ANDLAB="cd /Volumes/BaseQi/andlab;set_adb"
alias GITHUB="cd /Volumes/BaseQi/Github"
