#!/bin/bash 
#input what for a string do you search
# Name: filesearch.sh - Anzeige der Grösse sortiert ausgegeben 
# SYNOPSIS: filesearch.sh [OPTION] 
# Description: Gestaltet ein File um das es nur deutsche Texte, Hauptgruppen und zeigt nur noch die zwei Hauptspalten an.
# Parameter fuer sort: 
# 
# Autoren: Emanuel Constaniti 
# Version: 1.0 
# Datum: 22.10.2021

# REGEX nimmt nur die Zahl 2 von Export Small zweiter teil printet nur die zwei gewünschten spalten aus und gibt mit length 7 die hauptgruppen aus. 
 awk '$1 ~ /^[0-2]$/' ExportSmall.spl | \
  awk -F"'" '{print $2,"     ",$4}' | \
   awk 'length($1)==7' 