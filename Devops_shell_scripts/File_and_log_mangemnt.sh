# Delete logs files older than 07 days

#!/bin/bash
find /var/logs -type f -name "*.log" -mtime +7 -exec rm -f {} \;
echo "Log files older than 07 days have been deleted successfully"
```
# find - command to search for files in a directory hierarchy
# tyep - option to specify the type of file to search for
# f - file type
# name - option to specify the name of the file to search for
# mtime - option to specify the last modified time of the file
# +7 - option to specify the number of days since the file was last modified
# exec - option to execute a command on the files found
# rm - command to remove files
# f - option to force removal of files
# {} - placeholder for the files found by the find command
# \; - option to terminate the exec command



```bash
tail -f /var/logs/*.log | grep -i "error"
# tail - command to display the last part of a file
# f - option to follow the output of a file
# grep - command to search for a pattern in a file
# i - option to ignore case sensitivity
# "error" - pattern to search for in the log files

```
# Path: Devops_shell_scripts/monitor_logs.sh
# Continously monitor the log files for errors

#!/bin/bash
tail -f /var/logs/*.log | grep -i "error"
```

# extract 50 lines from a log file and save it to a another file
head -n 50 /var/logs/app.log > /var/logs/app_errors.log
# head - command to display the first part of a file
# n - option to specify the number of lines to display
# 50 - number of lines to display
# /var/logs/app.log - path to the log file
# > - output redirection operator
# /var/logs/app_errors.log - path to the new file to save the extracted lines
```
