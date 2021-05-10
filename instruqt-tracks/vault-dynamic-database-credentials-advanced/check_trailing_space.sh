#!/bin/bash
grep -r '[[:blank:]]$' . > /tmp/trailing_space_check
space=$(cat /tmp/trailing_space_check | grep track.yml:)
if [[ ! -z $space ]]; then
  echo "There are trailing spaces in track.yml"
  cat /tmp/trailing_space_check
  exit 1
fi 
