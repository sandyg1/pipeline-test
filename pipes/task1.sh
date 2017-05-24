#!/bin/bash


sudo apt-get update
sudo apt-get install sshpass

echo "Updating routes on opsman"
#echo $CERT

echo ""
echo ""

#echo -e $CERT

echo $KEY | tr -d '"'
echo $CERT | tr -d '"'
