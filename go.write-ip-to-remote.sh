#!/bin/bash

# Set the remote server details
REMOTE_SERVER="example.com"
REMOTE_USERNAME="macias"
REMOTE_PATH="/path/to/remote/file.txt"


# THis solution is bad as it may return several IPs
# Get the IP address of the local machine
IP_ADDRESS=$(hostname -I | awk '{print $1}')

# Get the IP address of the active network connection
IP_ADDRESS=$(ip route get 1 | awk '{print $7}')

# Write the IP address to the remote file
ssh $REMOTE_USERNAME@$REMOTE_SERVER "echo $IP_ADDRESS >> $REMOTE_PATH"
