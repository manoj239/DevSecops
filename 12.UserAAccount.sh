#Take Username as Input and check if the user already exists
#if the user dont exists ,create user and genrate random password"
#Force the user to reset the password on the first login

#!/bin/bash
while true; do
    read -p " Please enter the name of the user:" USERNAME
    echo $USERNAME
    EXISTING_USER=$(cat /etc/passwd | grep -i -w $USERNAME | cut -d ":" -f 1)
    if [ "${EXISTING_USER}" = "${USERNAME}" ]; then
        echo "The Username $USERNAME already exists..Use a different one"
    else
        echo "Lets Create a new user $USERNAME"
    fi
done
