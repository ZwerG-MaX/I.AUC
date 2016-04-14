#############################################################################
#                   Copyright (C) 2015  LinArch                             #
#									   									    #
#    This program is free software: you can redistribute it and/or modify   #
#    it under the terms of the GNU General Public License as published by   #
#    the Free Software Foundation, either version 3 of the License, or      #
#    (at your option) any later version.				    				#
#									    									#
#    This program is distributed in the hope that it will be useful,        #
#    but WITHOUT ANY WARRANTY; without even the implied warranty of         #
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          #
#    GNU General Public License for more details.		           		    #
#									    									#
#    You should have received a copy of the GNU General Public License      #
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.  #
#############################################################################

#############################################################################
##             Iranian Arch Users Scripts(I.AUC.ver3)                      ##
##             Developed By:          LinArcX                              ##
##	       	   Visit Me:           www.stack.blog.ir                       ##
##             Visit Us:          www.bbs.archusers.ir                     ##
#############################################################################

#!/bin/bash

function initialize ()
{

	echo -e "I want to install 'fribidi','conky-manager','conky-lua','redis' on Your Machine.agree?(y/n):"
	read answerDependency
	if [ "$answerDependency" == "y" ];then
		$(notify-send 'Initializing...') &
		$(sudo yaourt -S fribidi conky-lua conky-manager redis)
	fi
	read -p "I want to install fonts on Your Machine.agree?(y/n):" answerFonts
	if [ "$answerFonts" == "y" ];then
		 $(notify-send 'Installing Fonts...') &
		 $(cp ../Fonts/* ~/.fonts)
	fi
	echo -e "I want to change permission of Scripts.sh to +x(runnable).agree?(y/n):"
	read answerPermission
	if [ "$answerPermission" == "y" ];then
		$(chmod +x Scripts.sh)
		$(notify-send 'Sctipts.sh is now Runnable!')
	fi
	 #&
	# mplayer "$HOME/Music/Divoonegi.mp3"
}

function setWireLessInterface ()
{
	interface=$(ifconfig | grep "RUNNING" | grep "BROADCAST" | awk '{print $(1F)}' | cut -d":" -f1)
	$(notify-send "Your Interface is:$interface") &
	sed -i -- "s/wlp3s0/$interface/g" "../Arch"
}

function setCity ()
{
	read -p "Please Enter Your City Name: " city
	source redis-bash-lib # include the library
	exec 6<>/dev/tcp/localhost/6379 # open the connection
	redis-client 6 SET city $city # do a SET operation
	exec 6>&- # close the connection
	$(notify-send "Your Current location is:$city.please restart ArchWeather!")
	source Scripts.sh;location
	# archWeatherID=ps -aux | grep conky | grep ArchWeather | awk '{print $(2F)}' #id of ArchWeather
	# $(kill -9 $archWeatherID)
	# sed -i -- "s/mainCity/$city/g" "Scripts.sh"
}

trap '' 2
while true;do
	clear
	echo -e "==========================================================
||							||
||		Welcome to I.AUC.ver3			||
||							||"
	echo -e "=========================================================="
	echo "1:initialize"
	echo "2:Set Wireless Interface"
	echo "3:Set Your City"
	echo "q:Quit"
	echo -e "\n"
	read -p "Enter Your Selection: " ans
	case "$ans" in
	  	"1")initialize;shift;;
		"2")setWireLessInterface;shift;;
		"3")setCity;shift;;
		"q")clear;break;;
		 *)echo "Number Error! Please Enter another Number";;
	esac
	echo -e "Enter To Continue...\c"
	read input
done



