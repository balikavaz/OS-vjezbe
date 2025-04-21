#!/bin/bash

# U varijablu spremi trenutni direktorij.
LIST=($(pwd))

# Naziv direktorija u kojem treba odraditi promjene.
DIRECTORY="screenshots"

# Spremi u niz sve nazive datoteka u direktoriju u kojem cemo raditi projmene.
FILES=($(ls "$LIST/$DIRECTORY/"))

# Iteracija kroz sve zapise u nizu u kojem su spremljene datoteke.
# i prikazuje indeks u nizu
# c je brojcana vrijednost koja je dio naziva datoteke
for (( i=0; i<${#FILES[@]}; i++)); do
	((c=i+1))
	# Sa mv naredbom mijenjamo postojece datoteke u nove koje imaju prefix screenshot_<redni_broj>_<naziv_datoteke>.png
	mv "$LIST/$DIRECTORY/${FILES[i]}" "$LIST/$DIRECTORY/screenshot"_"$c"_"${FILES[$i]}"
done

# Ispisi sve datoteke nakon izmjene naziva.
ls -l $LIST/$DIRECTORY
