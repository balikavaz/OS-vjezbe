#!/bin/bash

DIRECTORY=$1
ARCHIVE="svi_zapisi"

# Provjera broja argumenata, bilo koji broj različit od 1 - ispiši poruku i prekini izvršavanje programa.
if [ $# -ne 1 ]; then
	echo ""
	echo " ! Potrebno je upisati točno jedan argument."
	echo ""
	exit
fi

# Provjerava postoji li direktorij.
# Ako postoji direktorij izvrši arhiviranje.
if [ -d "$DIRECTORY" ]; then
	zip "$ARCHIVE".zip -r "$DIRECTORY"
	echo ""
	echo " * Direktorij postoji i arhiviranje je izvršeno!"
	echo ""

# Ako ne postoji direktorij ispiši poruku i prekini izvršavanje programa.
else
	echo ""
	echo " ! Direktorij ne postoji."
	echo ""
	exit
fi
