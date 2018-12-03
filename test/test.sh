#!/usr/bin/env bash
set -x
echo "Testing UFP Docker Wraps"



echo "By Instantiating each"

wrapCall()
{
    echo "Wrapping Call $@"
	$@
	RESULT=$?
	if [ "${RESULT}" -ne 0 ]; then
		echo "Shit happened"
	exit 1
	fi
}


wrapCall ../wraps/go version
wrapCall ../wraps/gradle -version
wrapCall ../wraps/java --version
wrapCall ../wraps/jq version
wrapCall ../wraps/maven version
wrapCall ../wraps/node version
wrapCall ../wraps/npm
wrapCall ../wraps/python
wrapCall ../wraps/robot
wrapCall ../wraps/yarn

echo "Test Successful"

