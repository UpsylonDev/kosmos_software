#!/bin/bash
# recherche clef usb
# D. Hanon 7 novembre 2020
# Remplacer "kosmos2" à la ligne 34 par le nom d'utilisateur

#recherche le nom de la clef
function find_USB
{
	if [ -z $1 ]; then
        echo
        exit -1
    fi
	clef=`ls $1`
	if [ $? != 0 ]; then
		echo $0 : ERREUR recherche clef
		exit -1
	fi
	clef=`echo $clef | cut -d" " -f1`
	if [ $? != 0 ]; then
		echo $0 : ERREUR recherche clef
		exit -1
	fi
	
	if [ -z $clef ]; then
        echo
        exit -1
	else
        echo -n $1/$clef
	fi
	
}
function find_USB_1
{
	ls /media/kosmos2/ | { read a _; echo "$a"; }
}

find_USB $1
exit 0
