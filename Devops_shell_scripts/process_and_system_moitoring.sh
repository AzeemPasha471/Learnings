
# find top 5 processes consuming the most CPU
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
# ps - command to display information about processes
# e - option to display all processes
# o - option to specify the output format
# pid - process ID
# ppid - parent process ID
# cmd - command name
# %mem - percentage of memory used by the process
# %cpu - percentage of CPU used by the process
# sort - option to sort the output
# -%cpu - sort by CPU usage in descending order
# head - command to display the first part of a file
# n - option to specify the number of lines to display
# 6 - number of lines to display

# check for specific process
ps -ef | grep "nginx"
# ps - command to display information about processes
# e - option to display all processes
# f - option to display full format listing
# grep - command to search for a pattern in a file

# check for specific process and count the number of instances
ps -ef | grep -c "nginx"

# check for specific process and kill it
pkill -f "nginx"

# check for specific process and kill it gracefully
pkill -15 -f "nginx"
# pkill - command to send signals to processes based on name
# 15 - signal number for SIGTERM (terminate)
# f - option to search for a pattern in the full command line
