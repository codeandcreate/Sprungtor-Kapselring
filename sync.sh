#!/bin/bash

#### we have required params...
if (( $# != 3 )) && (( $# != 4 )); then
	echo "Simple Gemini Webring Sync"
	echo "=========================="
	echo ""
	echo "Parameters:"
	echo "1.) URL or path / filename to the source list"
	echo "2.) Target path / filename on your capsule"
	echo "3.) Line of your own capsule URL"
	echo "4.) Alternate headline (replaces the first line of the gmi / optional)"
	echo ""
	echo "Example:"
	echo "sync.sh https://raw.githubusercontent.com/someuser/somerepo/main/somefile.gmi /var/gemini/default/linklist.gmi 5 \"some links for you\""
	exit
fi

#### some variable names for better reading
sourceRepo=$1
targetFileName=$2
ownCapsuleLine=$3
linkListTitle=$4

#### configuration
tempDir=/tmp

#### temporary directory:
if ! [[ -d "$tempDir/sgw-sync" ]]; then
	mkdir $tempDir/sgw-sync
fi

# double check... the temp directory must exists!
if ! [[ -d "$tempDir/sgw-sync" ]]; then
	echo "ERROR: can't create temporary directory $tempDir/sgw-sync."
	exit
fi

cd $tempDir/sgw-sync

#### download / copy source gmi

# if we found a https url, we download this file via curl. 
# if it is a local file, we just copy it.
httpsCheck=${sourceRepo/https\:\/\/*/}
if [ "${#httpsCheck}" -eq "${#sourceRepo}" ]; then
	if [[ -f "$sourceRepo" ]]; then
		cat $sourceRepo >> tmp.gmi
	else
		echo "ERROR: Source file $sourceRepo not found."
		exit
	fi
else
	curl -f -s $sourceRepo -o tmp.gmi
	if ! [[ -f "tmp.gmi" ]]; then
		echo "ERROR: Could not download $sourceRepo"
		exit
	fi
fi

#### cut out line $ownCapsuleLine from tmp.gmi and replace the headline if set
if (( $# == 4 )); then
	echo "# $linkListTitle" >> tmp_cutted.gmi
	sed "1d" tmp.gmi >> tmp_cutted.gmi
	sed -i "${ownCapsuleLine}d" tmp_cutted.gmi
else
	sed "${ownCapsuleLine}d" tmp.gmi >> tmp_cutted.gmi
fi

#### move new link list to $targetFileName
mv tmp_cutted.gmi $targetFileName 2> /dev/null

#### cleanup
rm tmp.gmi 2> /dev/null
cd ..
rmdir sgw-sync 2> /dev/null
