#!/bin/bash
# Aufruf: filedif_manuel.sh file1 file2
# Parameter : file1 and  file2
# Autor: Emanuel Constanti
# Version: 3.2.3
# Datum: 28.09.2021
#
#fildedif.sh
# Parameter : file1 and  filer2
# Autor: Emanuel Constanti
# Version: 3.2.3
# Datum: 28.09.2021
#

# Parameterüberprüfung

# 1.Zuerst eine Random Zahl definieren die der Benutzer eingeben muss die zwischen 2 und 20 ist.
# 2. Eine Zahl ist definiert worden
# 3 LOOP solange die Zahl nicht richitg ist fang wieder von neu an.
# 3. User gibt erste Zahl ein wenn Sie kleiner ist wird Sie angezeigt wernn grössser wird dies ausgegben
# 4. User hat richitge Zahl eingeben er gewinnt das Spiel.

guess=-1
typeset -i num=0
echo " Geben Sie eine Zahl zwischen 1 - 10 ein"

#Generiere eine Random number
(( answer = RANDOM % 10 + 1 ))

while (( guess != answer )); do 
        num=num+1
        read -p "Geben Sie eine Nummer ein $num: " guess

        if (( guess < answer )); then

            echo "Geben sie eine höhre Zahl ein"
            elif ((guess > answer )); then
            echo "Geben Sie eine kleinere Zahl ein"
            fi
            
done
echo " Horray Sie haben richitg geraten $num.\n"


