#!/bin/sh

usage() {
    echo "Usage: $0 -p <port> -n <network> -t" 1>&2; exit 1;
}

NETWORK="development"
PORT=7545
TEST=false

while getopts "p:n:t" o; do
    case "${o}" in
        p)
            PORT=${OPTARG}
            ;;
        n)
            NETWORK=${OPTARG}
            ;;
        t)
            TEST=true
            ;;
        \?)
            echo "ERROR: Invalid option -$OPTARG"
            usage
            ;;
    esac
done

if [ "${NETWORK}" == "development" ]; then
    (ganache-cli --quiet --port 7545 -h 0.0.0.0) &
    sleep 3
fi
if [ "${TEST}" == "true" ]; then
  truffle test --network ${NETWORK}
else
  truffle migrate --network ${NETWORK}
fi

