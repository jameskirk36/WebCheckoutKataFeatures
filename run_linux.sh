#!/bin/sh
if [ -z $1 ]
then
	echo "Aborting.  Please provide an app url as a single argument"
	exit 1
fi
echo "Running against app_host: " $1
export checkout_url=$1
bundle exec cucumber 
