#!/bin/bash

config1=$(find /home/vagrant/diffconfig/tftpboot/ -type f | peco)
config2=$(find /home/vagrant/diffconfig/tftpboot/ -type f | peco)

diff "$config1" "$config2"
