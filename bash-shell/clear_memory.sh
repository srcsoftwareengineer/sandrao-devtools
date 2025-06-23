#!/bin/bash
# ============================================================================================================
# Created on 2021-08-03
# @program: clear_memory
# @version: 1.0
# @author: Sandro Regis Cardoso | Software Engineer
# @contact: src.softwareengineer@gmail.com
# @summary: Program to free memory usage. This starting coding for this program was catched from internet
# and as I use it from a long, long time, unfortunely I don't remember the source where I found it.
# It was adapted to be executed on Linux Debian distribuition and it works from 6.0 or higher.
# Some initial enhancements was did few days ago until today.
# There are also some planned improvements to be coded days ahead.
# ============================================================================================================
# Setting coloring vars
white="\033[0m"
yellowbold="\033[1;33m"	
yellow="\033[0;33m"
red="\033[1;31m"
light_greenbold="\033[1;92m"
blue="\033[1;36m"
light_blue="\033[0;94m"
set -e
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
		   echo -e $yellow"This program need$red root user privilegies!"$white
		   exit 1;
		fi
	}
	function get_memory_usage {
		free -hltw;
	}
	function run_task1 {
		echo -e $blue"...:: 1: "$light_blue"Dropping shared memory $light_greenbold[ok]"
		sync && echo 1 > /proc/sys/vm/drop_caches;
		sleep 5;
	}
	function run_task2 {
		echo -e $blue"...:: 2: "$light_blue"Dropping buffers memory $light_greenbold[ok]"
		sync && echo 2 > /proc/sys/vm/drop_caches;
		sleep 5;
	}

	function run_task3 {
		echo -e $blue"...:: 3: "$light_blue"Running.... $light_greenbold[ok]"
		sync && echo 3 > /proc/sys/vm/drop_caches;
		sleep 5;
	}

	function run_task4 {
		echo -e $blue"...:: 4: "$light_blue"Reinforcing cleanse $light_greenbold[ok]"
		sync && echo 3 > /proc/sys/vm/drop_caches;
		sleep 5;
	}
	function run_task5 {
		echo -e $blue"...:: 5: "$light_blue"Turning off swapp     $light_greenbold[ok]"
		swapoff -a;
		sleep 5;
	}
	function run_task6 {
		echo -e $blue"...:: 6: "$light_blue"Turning on swapp      $light_greenbold[ok]"
		swapon -a;
		sleep 5;
	}
if check_root_user; then
	log_initial_header
	get_memory_usage
	log_starting_tasks
	run_task1
	run_task2
	run_task3
	run_task4
	run_task5
	run_task6
	log_tasks_done
	get_memory_usage
fi
exit 0;
