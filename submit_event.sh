#!/bin/sh

# Read PROJECT_ID and EVENT_COLLECTION
. ./env_setup

#
if [ "$1" != "" ]
then
	WRITE_KEY="$1"
fi

#
curl "https://api.keen.io/3.0/projects/$PROJECT_ID/events/$EVENT_COLLECTION?api_key=$WRITE_KEY" -H "Content-Type: application/json" -d @Purchases/purchase1.json
echo

