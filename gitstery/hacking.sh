#!/bin/bash


echo  "$@" | git hash-object --stdin | grep -iq -f /dev/stdin <(git show solution) && echo "You found the murderer: $@"
