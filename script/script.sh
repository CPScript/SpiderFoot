#!/bin/bash
clear
#COLOUR
red='\e[1;31m'
yellow='\e[0;33m'
Blue='\e[1;34m'
Reset='\e[0;0m'
title="SF E-LAUNCH"
echo -e '\033]2;'$title'\007'
echo -e '\e[0m\e[3;36m-------------------------------
\e[3;31m SpiderFoot Easy \e[3;36m
------------------------------- \e[3;39m
(1)  Launch Spider Foot Local Host
(2)  Download & Install SpiderFoot
(3)  Remove & Install SpiderFoot \e[3;36m
------------------------------- \e[3;39m
       CTRL + C To Exit \e[3;36m
-------------------------------'

echo -e $Blue" ┌─["$red"SF$Blue]──[$red~$Blue]─["$yellow"Easy$Blue]"
read -p      " └─────► " n
case $n in
    1) clear&&echo "launching spiderfoot on localhost"&&cd&&cd spiderfoot&&python3 sf.py -l 127.0.0.1:5001;;
    2) cd&&git clone https://github.com/smicallef/spiderfoot.git&&cd spiderfoot&&pip3 install -r requirements.txt&&firefox "https://www.spiderfoot.net/documentation/";;
    3) cd&&clear&&echo "make sure to make backups of your config/keys"&&read -p "Have You Made Backups? Press Enter To Continue"&&sudo rm -r spiderfoot&&git clone https://github.com/smicallef/spiderfoot.git&&cd spiderfoot&&pip3 install -r requirements.txt&&firefox "https://www.spiderfoot.net/documentation/";;
    
esac
