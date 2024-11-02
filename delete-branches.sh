#!/usr/bin/env bash

usage() { echo "Usage: $0 [-e <string>]" 1>&2; exit 1; }
EXCLUDE_BRANCHES=master
while getopts ":e:" o; do
    case "${o}" in
        e)
            EXCLUDE_BRANCHES+="|$OPTARG"
            ;;
        *)
            usage
            ;;
    esac
done

if [ -z "${EXCLUDE_BRANCHES}" ]; then
    usage
fi

read -p "Is the project directory currently pointed to master? (y/n):" response && [[ $response == [yY] ]] || exit 1

echo "Starting branch deletions."
git branch | grep -vE "${EXCLUDE_BRANCHES}" | xargs git branch -D
echo "Completed branch deletions."
echo "Current branch list:"
git branch
