#!/bin/bash

currentdir=`pwd`
source ${currentdir}/config.sh

if [ -n "$1" ]; then
  configdir+="/$1"
fi

if [ -z "${ignoredir}" ]; then
  config1=$(find $configdir -type f -print | sort -r | peco --prompt="config1>")
  config2=$(find $configdir -type f -print | sort -r | peco --prompt="config2>")
else
  config1=$(find $configdir -type d -name ${ignoredir} -prune -o -type f -print | sort -r | peco --prompt="config1>")
  config2=$(find $configdir -type d -name ${ignoredir} -prune -o -type f -print | sort -r | peco --prompt="config2>")
fi

echo "diff $config1 $config2"
diff "$config1" "$config2"
