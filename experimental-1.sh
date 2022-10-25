#!/bin/bash -e

BRANCH_VERSION='None'
REPOSITORY='None'

if [ -f .env ]; then
    source .env
fi

while getopts ":b:" arg; do
    case "${arg}" in
        b)
            BRANCH_VERSION=${OPTARG}
        ;;
    esac
done

echo "[LOG] \$BRANCH_VERSION: $BRANCH_VERSION"
echo "[LOG] \$REPOSITORY: $REPOSITORY"
