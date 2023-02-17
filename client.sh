#!/bin/bash

# Set the IP address and port number for the destination
ip_address="192.228.142.196"
port="8948"

# Set the initial value for the counter
counter=1

# Loop through 2000 times
for counter in {1..2000}; do

  # Build the message to be sent
  message="Count: $counter, "
  for j in {1..5}
    do
      message+="iCDN UDP Test! "
  done
  
  # Print the message to the console
  echo -e "$message"
  
  # Pause for one second before sending the message
  sleep 1
  
# Send the message to the specified IP address and port number
done > >(nc -u $ip_address $port)
