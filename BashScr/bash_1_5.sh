if [[ $# -ne 1 ]]
then
echo "Max memory usage not entered"
exit
fi
ME=`pwd`/$0
CHECK=$(grep -c -e "sh $ME" ~/.bashrc)
if [[ CHECK == 0 ]]
then
echo "sh $ME" >> ~/.bashrc
fi
MEM=$1
kill `ps -o pid,%mem ax | sort -b -k2 -r | awk -F " " '$2>$MEM' | awk -F "  " '{print $1}'`

