#!/usr/bin/env bash

echo "The PATH is: $PATH"
echo "The terminal is: $TERM"
echo "The editor is: $EDITOR"

if [ -z $EDITOR ]
then
	echo "The EDITOR variable is not set"
fi

PATH="/cheeseburgers"
echo "The PATH now is: $PATH"

