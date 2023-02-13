#!/usr/bin/env bashio

sleep 10 # Wait for 10 second for Netdata to start

NETDATA_HOSTNAME=$(bashio::config 'hostname')
NETDATA_CLOUD_URL=$(bashio::config 'claim_url')
NETDATA_CLOUD_TOKEN=$(bashio::config 'claim_token')

curl -s https://my-netdata.io/kickstart.sh > /tmp/netdata-kickstart.sh
sh /tmp/netdata-kickstart.sh --claim-hostname ${NETDATA_HOSTNAME} --claim-token ${NETDATA_CLOUD_TOKEN} --claim-rooms ${NETDATA_CLOUD_ROOMS} --claim-url ${NETDATA_CLOUD_URL}--claim-url ${NETDATA_CLOUD_URL}
