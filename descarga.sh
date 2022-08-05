#!/bin/bash

declare -A zone
declare -A indexI
declare -A indexJ

zone["A"]="zona_norte"
zone["B"]="zona_norte"
zone["C"]="zona_norte"
zone["D"]="zona_norte"
zone["E"]="zona_centro"
zone["F"]="zona_centro"
zone["G"]="zona_sur"
zone["H"]="zona_sur"
zone["I"]="zona_sur"
zone["J"]="zona_sur"
zone["K"]="zona_sur"

indexI["A"]=12
indexI["B"]=13
indexI["C"]=12
indexI["D"]=12
indexI["E"]=8
indexI["F"]=10
indexI["G"]=10
indexI["H"]=11
indexI["I"]=11
indexI["J"]=13
indexI["K"]=8

indexJ["A"]=12
indexJ["B"]=12
indexJ["C"]=12
indexJ["D"]=13
indexJ["E"]=9
indexJ["F"]=10
indexJ["G"]=10
indexJ["H"]=12
indexJ["I"]=12
indexJ["J"]=11
indexJ["K"]=8


for letter in ${!zone[@]}; do
	for (( i = 0; i < 17 + 1; i++ )); do
		for (( j = 0; j < 17 + 1; j++ )); do
			wget -c "http://www.chileturcopec.cl/sites/default/files/mapas/${zone[$letter]}/$letter/TileGroup0/4-$i-$j.jpg" -P ~/rutas2/${zone[$letter]}/$letter
			#echo "http://www.chileturcopec.cl/sites/default/files/mapas/${zone[$letter]}/$letter/TileGroup0/4-$i-$j.jpg"
		done
	done
done




