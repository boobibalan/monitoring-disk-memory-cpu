# monitoring-memory-disk-cpu
this script helps to monitoring server disk,memory and cpu performance in real time

it will keeps on running to bring one hour performance status with intervel of 5 seconds and stores the output into log file

#sh execute.sh

and put in on cronjob

*/60 * * * * /root/script/execute.sh >/dev/null 2>&1

it will execute the scripting process on every 1 hour once.
