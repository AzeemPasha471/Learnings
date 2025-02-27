# system memory usage by processess
free -m
# free - command to display amount of free and used memory in the system
# m - option to display the output in megabytes

# check system memory usage by processess
ps aux --sort=-%mem | head -n 6
# ps - command to display information about processes
# aux - option to display all processes in a user-oriented format

# check system uptime
uptime
# uptime - command to display the system uptime


