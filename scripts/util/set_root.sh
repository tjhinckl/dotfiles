#!/usr/intel/bin/bash
set -e

# check for stale file handle
if [ ! -d "$PWD" ]; then
    echo UNDEFINED
    exit 0
fi

root=""
current_dir=$PWD
while [ "${PWD##*/}" != "$root" ]; do
    if [ -d ".git" ]; then
        echo "$PWD"
        exit 0
    fi
    cd ..
done

echo "$current_dir"

# can't seem to make this work
# if [ "$(git rev-parse --show-toplevel > /dev/null 2>&1)" ]; then
#     realpath "$PWD"
# else
#     realpath "$(git rev-parse --show-toplevel)"
# fi
