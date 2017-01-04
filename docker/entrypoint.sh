#!/bin/sh
if [ -z "$STATSRELAY_CONFIG_URL" ]; then
	echo "STATSRELAY_CONFIG_URL is not set. Please set it to the location of your statsrelay.yaml"
	exit 1
fi
curl -q -o /etc/statsrelay.yaml $STATSRELAY_CONFIG_URL
exec /usr/local/bin/statsrelay $@
