# check if a
netstat -tuln 
# netstat - command to display network connections, routing tables, interface statistics, masquerade connections, and multicast memberships
# t - option to display TCP connections
# u - option to display UDP connections
# l - option to display listening ports
# n - option to display numerical addresses instead of resolving hostnames

# check if a specific port is open
netstat -tuln | grep ":80"
# grep - command to search for a pattern in a file
# ":80" - pattern to search for in the netstat output

# check if a specific port is open and count the number of instances
netstat -tuln | grep -c ":80"

lsof -i :80
# lsof - command to list open files
# i - option to specify the internet address
# :80 - port number to search for

# find my publicip using  shell command
curl -s ifconfig.me
# curl - command to transfer data from or to a server
# s - option to run in silent mode
# ifconfig.me - website to display your public IP address

# check if a website is reachable
ping -c 4 google.com
# ping - command to send ICMP ECHO_REQUEST packets to network hosts
# c - option to specify the number of packets to send
# 4 - number of packets to send
# google.com - website to ping

# test if 443 is open on a remote server
nc -zv google.com 443
# nc - command to read and write data across network connections
# z - option to scan for listening daemons
# v - option to enable verbose mode
# google.com - remote server to test

# check if a website is reachable over HTTPS
openssl s_client -connect google.com:443
# openssl - command to provide SSL/TLS encryption and decryption
# s_client - option to implement a generic SSL/TLS client
# connect - option to specify the host and port to connect to

# check if a website is reachable over HTTPS and display the certificate information
openssl s_client -connect google.com:443 | openssl x509 -text
# openssl - command to provide SSL/TLS encryption and decryption
# s_client - option to implement a generic SSL/TLS client
# connect - option to specify the host and port to connect to
# x509 - option to display X.509 certificate information
# text - option to display the certificate in text format

# check if a website is reachable over HTTPS and display the certificate information in a specific format
openssl s_client -connect google.com:443 | openssl x509 -noout -subject -dates
# noout - option to suppress the output of the certificate itself
# subject - option to display the subject of the certificate
# dates - option to display the validity dates of the certificate.

