#!/bin/bash

resourcesDir="$(pwd)/resources/"
evdiDir="$(pwd)/evdi/"

#EVDI Web resources
evdiURL="https://github.com/DisplayLink/evdi.git"

#Cleanup old EVDI folder
if [ -d $evdiDir ] ; then
	rm -rf $evdiDir
fi

git clone --depth=1 --branch v1.7.1 $evdiURL
cd "$evdiDir"
make
cd ..
