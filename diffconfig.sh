#!/bin/bash

configdir="/home/vagrant/diffconfig/tftpboot/"

config1=$(find $configdir -type f | peco --prompt="config1>")
config2=$(find $configdir -type f | peco --prompt="config2>")

echo "diff $config1 $config2"
diff "$config1" "$config2"
