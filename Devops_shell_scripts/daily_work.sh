# write a script to check the avaialble free memory on the system and alert the user if it falls below a certain threshold 30%

#!/bin/bash
# get the total memory available on the system
total_mem=$(free -m | grep Mem | awk '{print $2}')
# get the free memory available on the system
free_mem=$(free -m | grep Mem | awk '{print $4}')
# calculate the percentage of free memory
free_mem_percent=$(echo "scale=2; $free_mem / $total_mem * 100" | bc)
# set the threshold for free memory
threshold=30
# check if free memory is less than the threshold
if [ $(echo "$free_mem_percent < $threshold" | bc) -eq 1 ]; then
    echo "Free memory is less than 30%"
    echo "Total Memory: $total_mem MB"
    echo "Free Memory: $free_mem MB"
    echo "Free Memory Percentage: $free_mem_percent%"
else
    echo "Free memory is greater than 30%"
    echo "Total Memory: $total_mem MB"
    echo "Free Memory: $free_mem MB"
    echo "Free Memory Percentage: $free_mem_percent%"
fi
# free - command to display amount of free and used memory in the system
# m - option to display the output in megabytes
# grep Mem - filter the output to get the memory information
# awk - command to process text files
# print $2 - print the second column of the output (total memory)
# print $4 - print the fourth column of the output (free memory)
# scale=2 - set the number of decimal places for bc
# bc - command line calculator
# echo "$free_mem_percent < $threshold" - compare free memory percentage with threshold
# [ $(...) -eq 1 ] - check if the comparison result is true
# if [ condition ]; then - conditional statement
# else - else statement
# fi - end of if statement

# Script to automate the creation of a new user with specific permissions and home directory
#!/bin/bash
# get the username from the user
read -p "Enter the username:" Mani
# create a new user with the specified username
sudo useradd -m $Mani
# set a password for the new user
sudo passwd $Mani   
# add the new user to the sudo group
sudo usermod -aG sudo $Mani
# create a new directory for the user
sudo mkdir /home/$Mani/data
# set the ownership of the directory to the new user
sudo chown -R $Mani:$Mani /home/$Mani/data
# set the permissions of the directory
sudo chmod 755 /home/$Mani/data
# display a message to the user
echo "User $Mani created successfully with home directory /home/$Mani/data"
