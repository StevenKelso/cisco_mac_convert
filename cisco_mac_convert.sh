#!/bin/bash
#
# =================================== #
# Script Name: cisco_mac_convert.sh
# Author: Steven Kelso
# Description: takes a text file of MAC addresses in standard notation and formats it in Cisco style
# Usage: ./cisco_mac_convert.sh <file.txt>
# =================================== #

# remove leading and trailing whitespace
sed -i 's/^[[:space:]]*//; s/[[:space:]]*$//' $1

# translate uppercase to lowercase
sed -i 's/[A-Z]/\L&/g' "$1"

# remove colons
sed -i 's/://g' "$1"

# add periods after every four characters
sed -i 's/..../&./g' "$1"

# remove period after final character
sed -i 's/\.$//' "$1"
