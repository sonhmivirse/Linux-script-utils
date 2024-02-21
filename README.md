# Linux-script-utils

## Kill port process

```shell
bash kill_port_process.sh <port>
```

## Push file from local to server

1. Add ssh to the server
2. Replace necessary information

- `<user>@<IPaddress>`: server infor, eg: root@10.0.0.98
- `<path_to_folder_in_server>`: Path to the folder on server to save to pushed file

```shell
#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <param>"
    exit 1
fi

# Assign the parameter to a variable
param="$1"
# Use scp with the constructed file path
scp "${param}" "<user>@<IPAddress>:<path_to_folder_in_server>"
```

3. Use

```shell
bash push_server.sh <path_to_file_in_local_to_push>
```

## Copy file from server to local

1. Add ssh to the server
2. Replace necessary information:

- `<user>@<IPaddress>`: server info, eg: root@10.0.0.98
- `<folder to save>`: folder in local device to save the file copy from server

```shell
#!/bin/bash

# Check if a parameter is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <param>"
    exit 1
fi

# Assign the parameter to a variable
param="$1"
# Use scp with the constructed file path
scp "<user>@<IPaddress>:${param}" <folder to save>
```

3. Using:

```shell
bash scp.sh <file_to_copy_from_server>
```
