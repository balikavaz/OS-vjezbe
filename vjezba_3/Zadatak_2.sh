#!/bin/bash

# Grananje: 1. blok - Ako nije upisan točno jedan argument tada ispiši poruku i prekini izvršavanje programa.
if [ $# -ne 1 ]; then
        echo ""
        echo " ! Potrebno je upisati točno jedan argument."
        echo ""
        exit

# Grananje: 2. blok - Ako je upisan točno jedan argument, izvrši ovaj blok koda.
else
	# Grananje: 1. blok - Ako je upisana brojčana vrijednost u intervalu od 1 do 10 izvrši prvi blok koda.
	if [ $1 -gt 0 ] && [ $1 -lt 11 ]; then
		echo "Upisan je odgovarajući broj."

		# Obriši datoteku brojevi.txt, ako postoji od prije tako da započnemo s potpuno novom.
		# U slučaju pogreške (da datoteka ne postoji) tada će output biti poslan u /dev/null tako da se ne vidi pogreška.
		rm brojevi.txt 2>/dev/null

		# Kreiraj novu datoteku.
		touch brojevi.txt

		# Upiši vrijednosti u brojevi.txt krenuvši od 1 do vrijednosti koja je upisana.
		for (( i=1; i<=$1; i++)); do
			echo $i >> brojevi.txt
		done

	# Grananje: 2. blok - Ako nije upisana očekivana brojčana vrijednost tada ispiši poruku i prekini rad skripte.
	else
		echo ""
		echo " ! Upisani argument nije ispravan."
		echo ""
		exit
	fi
fi
