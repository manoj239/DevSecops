#!/bin/bash
systemctl status nginx --no-pager > /dev/null
if [ $? -eq 0 ]; then
    echo "The Service nginx is already running, lets validate using curl...."
    curl http://localhost | grep -i nginx
else
    echo "Lets start validating nginx service..."
    service nginx start
    curl http://localhost  grep -i nginx
fi
