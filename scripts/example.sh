#!/usr/bin/env bash
set -x
mkdir -p /tmp/abs && cd /tmp/abs
touch file{1..9}.test
set +x

echo "echo without escaping\n"
echo -e "\e[31mExample shell script.\e[0m"

FILES=`ls -l`
echo "$FILES"

rename 's/\.test/.txt/' *.test
echo "$(ls -l)"

rm *

exit 0
