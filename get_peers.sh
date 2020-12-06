#!/bin/bash
NETWORK=${1:-mainnet}
SOURCE_URI=${1:-https://rpc.$NETWORK.nearprotocol.com/network_info}

echo "Fetching active peers for $NETWORK from $SOURCE_URI..."
echo

DATA=$(curl -sS $SOURCE_URI | jq --raw-output '.active_peers | map(.id + "@" + .addr) | join(",")')

echo $DATA
echo
