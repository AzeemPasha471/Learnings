# find top 10 largest files in /var/log directory
du -ah /var/log | sort -rh | head -n 10
# du - displayes size of files and directories
# a - option to display all files and directories
# h - option to display human-readable sizes
# sort - option to sort the output
# r - option to reverse the order
# h - option to display human-readable sizes

# check which directory is consuming the most space
du -sh /var/log/* | sort -rh | head -n 1
# du - displayes size of files and directories
# s - option to display only the total size of each argument

# check the disk usage of a specific directory
du -sh /var/log


                                                                                                                                                          