#!/bin/bash

# Download datasheets mentioned in local libraries
mkdir -p datasheets
for i in $(find ../lib/ -type f);do 
	URL=$(cat $i | grep Datasheet | cut -d "\"" -f 4); 
	FILE=datasheets/$(echo $i | sed -e "s/.*\/\(.*\)\.kicad_sym/\1/g").pdf; 
	if [ ! -f $FILE ]; then
		curl -o $FILE $URL; 
	fi
done

# Download supplementary documents
mkdir -p supplemental
URL=https://www.nxp.com/docs/en/package-information/SOT1427-1.pdf
FILE=supplemental/LFBGA159.pdf
if [ ! -f $FILE ]; then
	curl -o $FILE $URL; 
fi

