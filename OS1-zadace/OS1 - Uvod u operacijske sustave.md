## Zadatak 1

1. Provjerite trenutni radni direktorij  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# pwd
/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe
```

2. Izlistajte sadržaj trenutnog radnog direktorija  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# ls -l
total 0
```

3. Napravite novi direktorij vjezba1 i prebacite se u njega  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# mkdir vjezba1 && cd vjezba1
```

4. Unutar direktorija vjezba1 napravite novu datoteku README.md  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba1# touch README.md
```

5. Vratite se u početni radni direktorij 
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba1# cd -
/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe
```



## Zadatak 2

1. Napravite praznu datoteku file.txt unutar direktorija vjezba2  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# mkdir vjezba2 && cd vjezba2 && touch file.txt
```

2. Kopirajte datoteku file.txt u direktorij vjezba2 i nazovite ju file_copy.txt  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba2# cp file.txt file_copy.txt
```

3. Ispišite sve datoteke unutar direktorija vjezba2  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba2# ls -l
total 0
-rw-r--r-- 1 root root 0 Apr  1 06:35 file.txt
-rw-r--r-- 1 root root 0 Apr  1 06:36 file_copy.txt
```

4. Obrišite datoteku file.txt i vratite se u početni radni direktorij
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba2# rm file.txt && cd -
/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe
```

5. Pokušajte izbrisati direktorij vjezba2. Zašto ne možete?
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# rmdir vjezba2/
rmdir: failed to remove 'vjezba2/': Directory not empty
```
Ne mogu obrisati zato što se unutar direktorija nalaze datoteke. Naredom ```rmdir``` (bez dodatnih zastavica) moguće je obrisati samo prazan direktorij.
Jedan od načina kako mogu obrisati direktorij sa datotekama je naredba sa dodatnim opcijama koje se definiraju zastavicama.
```
rm -R -f vjezba2/
```


## Zadatak 3

1. Napravite novi direktorij vjezba3 i unutar njega direktorij backup  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# mkdir vjezba3 && mkdir vjezba3/backup
```
2. Unutar direktorija vjezba3 napravite 3 datoteke: notes.txt, todo.txt i script.sh 
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# cd vjezba3 && touch notes.txt && touch todo.txt && touch script.sh 
```
3. Kopirajte sve datoteke iz direktorija vjezba3 u direktorij backup  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3# cp *.txt *.sh backup/
```
4. Izbrišite samo datoteku script.sh iz direktorija vjezba3 i ispišite sve datoteke 
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3# rm script.sh && ls -l
total 4
drwxr-xr-x 2 root root 4096 Apr  1 20:41 backup
-rw-r--r-- 1 root root    0 Apr  1 20:40 notes.txt
-rw-r--r-- 1 root root    0 Apr  1 20:40 todo.txt 
```
5. U backup dodajte još jedan direktorij koju ćete imenovati USER varijablom  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3# whoami
root
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3# mkdir backup/$USER
```
6. Premjestite sve datoteke iz direktorija backup u direktorij nazvan   varijablom USER
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3# cd backup/
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3/backup# ls -l
total 4
-rw-r--r-- 1 root root    0 Apr  1 20:41 notes.txt
drwxr-xr-x 2 root root 4096 Apr  1 20:43 root
-rw-r--r-- 1 root root    0 Apr  1 20:41 script.sh
-rw-r--r-- 1 root root    0 Apr  1 20:41 todo.txt
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3/backup# mv *.txt *.sh root/
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3/backup# ls -l
total 4
drwxr-xr-x 2 root root 4096 Apr  1 20:44 root
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba3/backup# ls -l root
total 0
-rw-r--r-- 1 root root 0 Apr  1 20:41 notes.txt
-rw-r--r-- 1 root root 0 Apr  1 20:41 script.sh
-rw-r--r-- 1 root root 0 Apr  1 20:41 todo.txt
```

## Zadatak 4

1. Napravite novi direktorij vjezba4 i unutar njega direktorij subfolder  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# mkdir vjezba4 && mkdir vjezba4/subfolder
```
2. Unutar direktorija vjezba4 napravite datoteku prema nazivu varijable HOSTNAME  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# touch vjezba4/$HOSTNAME
```
3. Preimenujte novoizrađenu datoteku prema nazivu varijable USER  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe# mv vjezba4/$HOSTNAME vjezba4/$USER
```
4. Premjestite datoteku USER u direktorij subfolder  
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba4# mv $USER subfolder/
```
5. Izbrišite datoteku USER koristeći apsolutnu putanju
```
root@PC:/home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba4/subfolder# rm /home/user/FIPU/Operacijski_sustavi/GitHub/OS-vjezbe/vjezba4/subfolder/root
```