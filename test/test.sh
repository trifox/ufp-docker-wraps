#!/usr/bin/env bash
echo "Testing UFP Docker Wraps"



echo "By Instantiating each"

wrapCall()
{
    echo "Wrapping Call $@"
	$@
	RESULT=$?
	if [ "${RESULT}" -ne 0 ]; then
		echo "Shit happened ${RESULT}"
	exit 1
	fi
}


wrapCall ../wraps/go version
wrapCall ../wraps/gradle -version
wrapCall ../wraps/java --version
wrapCall ../wraps/maven --version
wrapCall ../wraps/node --version
wrapCall ../wraps/npm --version
wrapCall ../wraps/yarn --version
wrapCall ../wraps/python --version
wrapCall ../wraps/robot  --version

echo "Test Successful"

