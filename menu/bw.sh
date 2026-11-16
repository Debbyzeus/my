#!/bin/bash
# color of life
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
NC='\e[0m'
MYIP=$(wget -qO- ipv4.icanhazip.com);
echo "Checking VPS"
clear
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m                 BANDWITH MONITOR                 \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "" 
echo -e "\e[1;35m 1 \e[0m View Total Remaining Bandwith"
echo -e "\e[1;35m 2 \e[0m Usage Table Every 5 Minutes"
echo -e "\e[1;35m 3 \e[0m Usage Table Every O'clock"
echo -e "\e[1;35m 4 \e[0m Usage Tabel Every Day"
echo -e "\e[1;35m 5 \e[0m Usage Table Every Month"
echo -e "\e[1;35m 6 \e[0m Usage Table Every Year"
echo -e "\e[1;35m 7 \e[0m Usage Table Highest"
echo -e "\e[1;35m 8 \e[0m Usage Statistic Every O'clock"
echo -e "\e[1;35m 9 \e[0m View Usage Currently Active"
echo -e "\e[1;35m 10 \e[0m View Usage Traffic  Currently Active [5s]"
echo -e "" 
echo -e "\e[1;34m 0 BACK TO MENU \e[0m"
echo -e "\e[1;34m x Go out \e[0m"
echo -e "" 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m           TOTAL REMAINING BANDWITH SERVER         \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

2)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m            TOTAL BANDWITH EVERY 5 MINUTES        \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -5

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

3)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m              TOTAL BANDWITH EVERY O'CLOCK          \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -h

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

4)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m            TOTAL BANDWITH EVERY DAY            \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -d

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

5)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m            TOTAL BANDWITH EVERY MONTH •         \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -m

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

6)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m            TOTAL BANDWITH EVERY YEAR           \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -y

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

7)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m              TOTAL BANDWITH HIGHEST           \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -t

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

8)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m           STATISTICS USED EVERY O'CLOCK          \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -hg

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

9)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m               LIVE BANDWITH CURRENTLY            \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m Press [ Ctrl+C ] To-Exit \e[0m"
echo -e ""

vnstat -l

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

10)
clear 
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e "\e[1;34m           LIVE TRAFFIC BANDWITH USAGE        \e[0m"
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""

vnstat -tr

echo -e ""
echo -e "\e[1;33m -------------------------------------------------\e[0m"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;

0)
sleep 1
menu
;;
x)
exit
;;
*)
echo -e ""
echo -e "You pressed the wrong button"
sleep 1
bw
;;
esac
