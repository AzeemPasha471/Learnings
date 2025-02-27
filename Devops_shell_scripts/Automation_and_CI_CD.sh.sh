# write a script to restart a service if it crashes

#!/bin/bash
if systemctl is-active --quite ingnx; then
    echo "Service is running"
else
    echo "Service is not running"
    systemctl start ingnx
fi
# systemctl - command to control the systemd system and service manager
# is-active - option to check if a service is active
# --quite - option to suppress output
# nginx - name of the service to check

# write a script to check if a website is up and running
#!/bin/bash
if curl -s --head  --request GET http://www.google.com | grep "200 OK" > /dev/null; then
    echo "Website is up and running"
else
    echo "Website is down"
fi
# curl - command to transfer data from or to a server
# s - option to run in silent mode
# head - option to retrieve the headers of a URL
# request - option to specify the HTTP request method
# GET - HTTP GET request method
# http://www.google.com - URL to check
# grep - command to search for a pattern in a file
# "200 OK" - pattern to search for in the curl output
# /dev/null - null device to discard output



