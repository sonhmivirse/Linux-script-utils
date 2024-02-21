#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <param>"
    exit 1
fi

# Assign the parameter to a variable
param="$1"
# Use scp with the constructed file path
scp "<user>@<IPaddress>:${param}" <folder_or_file_to_copy>





