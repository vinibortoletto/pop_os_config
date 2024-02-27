#!/bin/bash
source ./.functions.sh

echo_doing 'Installing JDK'
sudo nala install default-jdk -y
echo_done
