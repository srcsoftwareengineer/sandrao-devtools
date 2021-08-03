# !/bin/bash
set -e
	white="\033[0m"
	yellowbold="\033[1;33m"	
	yellow="\033[0;33m"
	red="\033[1;31m"
	light_greenbold="\033[1;92m"
	blue="\033[1;36m"
	light_blue="\033[0;94m"
	
	function log_starting_tasks {
		log_blank_line
		echo -e $red"...::::: Run Tasks :::::..."
	}
	
	function log_tasks_done {
		echo -e $light_greenbold"...::::: All Tasks Are Done!"$white
		log_blank_line
	}
	
	function log_initial_header {
		echo -e $yellow"|===========================================================================================|"
		echo "| Current Memory Usage                                                                      |"
		echo -e "|===========================================================================================|"$white
	}
	
	function log_resulting_header {
		echo -e $yellowbold"|===========================================================================================|"
		echo "| Resulting Memory Usage                                                                    |"
		echo -e "|===========================================================================================|"$white
	}
	
	function log_blank_line {
		echo -e ""
	}
	
	function check_root_user {
		root_user=$(id -u);
		if ! [ $root_user -eq 0 ]; then
		   echo -e $yellow"This program will executed$red as root user!"$white
		   exit 1;
		fi
	}
	
	function get_memory_usage {
		free -hltw;
	}
	
	function run_task1 {
		echo -e $blue"...:: 1: "$light_blue"Dropping memory cache $light_greenbold[ok]"
		sync && echo 4 > /proc/sys/vm/drop_caches;
	}
	
	function run_task2 {
		echo -e $blue"...:: 2: "$light_blue"Turning off swapp     $light_greenbold[ok]"
		swapoff -a;
	}
	
	function run_task3 {
		echo -e $blue"...:: 3: "$light_blue"Turning on swapp      $light_greenbold[ok]"
		swapon -a;
	}


if check_root_user; then
	log_initial_header
	get_memory_usage
	log_starting_tasks
	run_task1
	run_task2
	run_task3
	log_tasks_done
	get_memory_usage
fi
