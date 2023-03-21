#!/bin/bash

# Get user input
read -p "Enter the IP address or hostname of the Windows or Samba system: " host
read -p "Enter the number of usernames you want to enter: " num_usernames

# Initialize empty arrays for usernames and passwords
usernames=()
passwords=()

# Loop through and prompt user for usernames and passwords
for (( i=1; i<=$num_usernames; i++ )); do
    read -p "Enter username $i: " username
    read -p "Enter password for $username: " -s password
    echo
    usernames+=($username)
    passwords+=($password)
done

read -p "Enter the full path to the output file: " output_file

# Check if output file exists
if [ -e "$output_file" ]; then
    read -p "Output file already exists. Do you want to overwrite it? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

# Iterate over usernames and passwords and attempt to authenticate
for username in "${usernames[@]}"; do
    for password in "${passwords[@]}"; do
        smbclient -L "$host" -U "$username%$password" &>/dev/null
        if [ $? -eq 0 ]; then
            echo "Valid authentication found for $username/$password on $host"
            # Enumerate Windows shares
            echo "Enumerating Windows shares..."
            smbclient -L "$host" -U "$username%$password" >> "$output_file"

            # Enumerate Samba shares
            echo "Enumerating Samba shares..."
            smbtree -U "$username%$password" -H "$host" >> "$output_file"

            # Enumerate users and groups
            echo "Enumerating users and groups..."
            rpcclient -U "$username"%"$password" "$host" -c "enumdomusers; enumdomgroups" >> "$output_file"

            # Enumerate open shares
            echo "Enumerating open shares..."
            smbstatus --shares --no-lock | grep -vE 'IPC\$|ADMIN\$' >> "$output_file"
            break 2
        else
            echo "Invalid authentication for $username/$password on $host"
        fi
    done
done

echo "Information enumeration complete. Results saved to $output_file"
