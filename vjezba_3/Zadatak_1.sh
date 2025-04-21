#!/bin/bash

# Grananje: 1. blok - Ako nisu upisana dva argumenta izvrši prvi blok koda.
if [ $# -ne 2 ]; then
        echo ""
        echo " ! Potrebno je upisati točno dva argumenta."
        echo ""
        exit

else
	# Prvi argument zapisi u varijablu.
	AP_PATH=$1

	# Drugi argument zapisi u varijablu.
	EXTENSION=$2

	# Pripremi ls naredbu sa punom putanjom i posalji sve u /dev/null - time izbjegavamo pojavljivanje errora na outputu.
	FULL_PATH_FILES="$(ls $AP_PATH*$EXTENSION 2>/dev/null)"

	# Grananje: 1. blok - Ako je došlo do pogreške u FULL_PATH_FILES (odnosno nema datoteka s upisanom ekstenzijom) ispiši poruku.
	if [ $? -eq 2 ]; then
		echo ""
		echo " ! U odabranom direktoriju nema datoteka sa ekstenzijom $EXTENSION."
		echo ""
		exit

	# Grananje: 2. blok - Ako ima datoteka onda izvrši ovaj blok koda.
	else
		ALL_FILES=()

		# Za sve pune putanje sa datotekama u nizu FULL_PATH_FILES izaberi samo ime datoteke i spremi u novi niz.
		# Taj niz se zove ALL_FILES.
		for i in ${FULL_PATH_FILES[@]}; do
			FILE=$(basename "$i")
			ALL_FILES+=("$FILE")
		done

		# Ispiši sve datoteke sa upisanom eksenzijom.
		echo ""
		echo " > Lista datoteka u direktoriju sa ekstenzijom $EXTENSION:"

		for i in ${ALL_FILES[@]}; do
			echo "     "$i
		done
		echo ""
	fi
fi
