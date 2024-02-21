#!/bin/bash

# Check if port argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <port>"
    exit 1
fi

# Get the port number from the argument
port=$1

# Check if any process is running on the specified port
process_info=$(lsof -i :$port)
if [ -z "$process_info" ]; then
    echo "No process found running on port $port"
    exit 1
fi

# Extract the PID of the process running on the specified port
pid=$(echo "$process_info" | awk 'NR==2 {print $2}')

# Kill the process
sudo kill -9 $pid

echo "Process running on port $port has been killed"
