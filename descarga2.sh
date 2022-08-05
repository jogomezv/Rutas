#!/bin/bash

for letter in ${!zone[@]}; do
	for (( i = 0; i < 13 + 1; i++ )); do
		for (( j = 0; j < 12 + 1; j++ )); do
			wget -c "http://www.chileturcopec.cl/sites/default/files/mapas/zona_norte/A/TileGroup0/4-$i-$j.jpg" -P ~/rutas2/${zone[$letter]}/$letter
			#echo "http://www.chileturcopec.cl/sites/default/files/mapas/${zone[$letter]}/$letter/TileGroup0/4-$i-$j.jpg"
		done
	done
done