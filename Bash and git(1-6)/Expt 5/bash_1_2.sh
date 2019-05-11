echo -e "\e[1mThe current OS is:\e[0m " `uname -o`
echo
echo -e "\e[1mThe OS version is:\e[0m " `uname -a`
echo
echo -e "\e[1mThe available shells are as follows:\e[0m "
cat /etc/shells/
echo
echo -e "\e[1mThe CPU information is as follows:\e[0m "
lscpu
echo
echo -e "\e[1mThe memory information is as follows:\e[0m "
cat /proc/meminfo
echo
echo -e "\e[1mThe hard disk information is as follows:\e[0m "
lsblk
echo
echo -e "\e[1mMounted file system information:\e[0m "
df -Th

