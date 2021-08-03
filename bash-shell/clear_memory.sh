# !/bin/bash
set -e
	white="\033[0m"
	yellowbold="\033[1;33m"	
	yellow="\033[0;33m"
	red="\033[1;31m"
	light_greenbold="\033[1;92m"
	blue="\033[1;36m"
	light_blue="\033[0;94m"
	root_user=$(id -u)
	if ! [ $root_user = 0 ]; then
	   echo -e $yellow"This program should be executed as root user!"
	   exit 1;
	else
		echo $yellow"|===========================================================================================|"
		echo "| Current Memory Usage                                                                      |"
		echo "|===========================================================================================|"$white
			free -hltw;
		echo ""
		echo $red"...::::: Run Tasks :::::..."
		echo $blue"...:: 1: "$light_blue"Dropping memory cache $light_greenbold[ok]"
			sync && echo 4 > /proc/sys/vm/drop_caches;
		echo $blue"...:: 2: "$light_blue"Turning off swapp     $light_greenbold[ok]"
			swapoff -a;
		echo $blue"...:: 3: "$light_blue"Turning on swapp      $light_greenbold[ok]"
			swapon -a;
		echo $light_greenbold"...::::: All Tasks Are Done!"$white
		echo ""
		echo $yellowbold"|===========================================================================================|"
		echo "| Resulting Memory Usage                                                                    |"
		echo "|===========================================================================================|"$white
			free -hltw;
		exit 0;
	fi
