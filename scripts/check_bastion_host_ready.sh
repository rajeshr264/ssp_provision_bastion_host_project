#!/bin/bash 
# This script checks if the Bastion server is ready to accept SSH connections

if [ "$#" -ne 3 ]; then
    echo "Error: Illegal number of parameters"
    echo "Usage: $0 <BASTION IP ADDRESS> <SSH PRIVATE KEY FILE PATH> <SSH USER NAME>"
    exit 1
fi

HOST_IP_ADDRESS=$1
SSH_PRIVATE_KEY_PATH=$2
SSH_USER_NAME=$3

#Wait until SSH on Bastion server is working
keyPath=$SSH_PRIVATE_KEY_PATH
bastionIP=$HOST_IP_ADDRESS
maxConnectionAttempts=10
sleepSeconds=10
#Wait until SSH on Bastion server is working
echo "Attempting to SSH to Bastion server..."
index=1
while (( $index <= $maxConnectionAttempts ))
do
  ssh -i ${SSH_PRIVATE_KEY_PATH} ${SSH_USER_NAME}@${HOST_IP_ADDRESS} -o StrictHostKeyChecking=no -o ConnectTimeout=10 -o ConnectionAttempts=1 -o BatchMode=yes -o PasswordAuthentication=no -o UserKnownHostsFile=/dev/null -o LogLevel=ERROR -o ServerAliveInterval=60 -o ServerAliveCountMax=3 exit
  case $? in
    (0) echo "${index}> Success"; break ;;
    (*) echo "${index} of ${maxConnectionAttempts}> Bastion SSH server not ready yet, waiting ${sleepSeconds} seconds..." ;;
  esac
  sleep $sleepSeconds
  ((index+=1))
done