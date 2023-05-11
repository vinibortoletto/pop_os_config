#!/bin/bash
source ./.functions.sh

echo_doing 'Installing NVM'
sudo nala install default-jdk -y
echo_done
