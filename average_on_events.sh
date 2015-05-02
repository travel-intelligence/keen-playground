#!/bin/sh

# Read PROJECT_ID and EVENT_COLLECTION
. ./env_setup

#
if [ "$1" != "" ]
then
	READ_KEY="$1"
fi

#
curl "https://api.keen.io/3.0/projects/$PROJECT_ID/queries/average?api_key=$READ_KEY&event_collection=$EVENT_COLLECTION&target_property=price"
echo

