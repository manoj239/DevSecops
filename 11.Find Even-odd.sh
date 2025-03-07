#Script to Find and print EVEN and ODD numbers
#!/bin/bash
for I in {2..10}; do
    if [ $(expr $I % 2) == 0 ]; then
        echo "I is $I and its a EVEN number"
    fi
done
