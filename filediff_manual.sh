  GNU nano 4.8                                      filedif_manual.sh                                                # Aufruf: filedif_manuel.sh file1 file2
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
if [[ ! -f "$1" ]] || [[ ! -f "$2" ]]; then
        echo "Da ist etwas schief gelaufen bitte probieren sie es noch einmal oder fragen Sie Ihren Systemadminstrad>        exit
fi

# Variablen setzen
if [[ $(wc -l < "$1") -gt $(wc -l < "$2") ]]; then
        grosseDatei=$1
        kleineDatei=$2
else
        grosseDatei=$2
        kleineDatei=$1
fi

COUNT=0
maxZeilenGross=$(wc -l <"$grosseDatei")
for n in {1..17}; do

        zeilegross=$(sed -n ${n}p "$grosseDatei")
        if [[ $n -gt $(wc -l < "$kleineDatei") ]]; then
                echo "fertig, die grosse Datei hätte noch mehr Zeilen!"
                echo $COUNT " Zeilen sind nicht gleich"
                exit
        fi
        zeileklein=$(sed -n ${n}p "$kleineDatei")

        if [[ "$zeilegross" != "$zeileklein" ]]; then
                  COUNT=`expr $COUNT + 1`
                echo "Zeile $n sind nicht gleich " $zeileklein $zeilegross

        fi

done
          echo $COUNT " Zeilen sind nicht gleich"


