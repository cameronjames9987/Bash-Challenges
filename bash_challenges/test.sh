#!/bin/bash
disk_space=$(df -h | grep '^/dev/' | awk '{print $5}'| tr -d '%')
echo "$disk_space"

echo "$disk_space" | while read disk;
     do
 
        if [ "$disk" -lt 70 ];
        then
        echo "Do Nothing"
        
        elif [ "$disk" -ge 70 ] && [ "$disk" -le 85 ]; 
        then
        echo "Write Message in Syslog and email <your_email>@amazon.com"
        
        elif [ "$disk" -gt 85 ]; 
        then
        echo "write an error message in syslog or message and send email to <your_email>@amazon.com"
		fi
	done
