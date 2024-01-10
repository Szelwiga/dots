#!/bin/bash
A=$(hyprctl monitors | grep workspace| head -n 1 | awk '{print $3}')
L=1
for i in $(hyprctl workspaces | grep "workspace ID" | grep -v lastwindowtitle | cut -d ' ' -f 3 | sort -g)
do
	#echo $i $L
	while [ $L -le $i ]
	do
		if [ ! $L == $i ]; then
			echo -n "e    "
		fi
		L=$(( $L + 1 ))
	done
	if [ $A == $i ]; then
		echo -n "p    "
	else
		echo -n "g    "
	fi
done
echo ""
