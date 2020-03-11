#!/bin/bash
tail -n +2 residents.txt | tr '\t' , | cut -d ',' -f1 | xargs -L 1 ./hacking.sh
