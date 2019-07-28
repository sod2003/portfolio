#!/usr/bin/env bash

function Hello() {
	local LNAME=$1
	echo "Hello $LNAME"
}

Goodbye() {
	echo "Goodbye $1"
}

echo "Calling the Hello function"
Hello Jim

echo "Calling the goodbye function"
Goodbye Dude

exit 0
