#!/bin/bash
A=$(hyprctl monitors | grep workspace| head -n 1 | awk '{print $3}')
A1="0"
A2="0"
A3="0"
A4="0"
A5="0"
A6="0"
A7="0"
A8="0"
A9="0"
A0="0"
function print(){
	if [ "x$1" == "x$A" ]; then
		echo -n "p"
	else
		if [ $2 == "1" ]; then
			echo -n "g"
		else
			echo -n "e"
		fi
	fi
	echo -n "    "
}
for i in $(hyprctl workspaces | grep "workspace ID")
do
	if [ $i == "1" ]; then A1="1"; fi
	if [ $i == "2" ]; then A2="1"; fi
	if [ $i == "3" ]; then A3="1"; fi
	if [ $i == "4" ]; then A4="1"; fi
	if [ $i == "5" ]; then A5="1"; fi
	if [ $i == "6" ]; then A6="1"; fi
	if [ $i == "7" ]; then A7="1"; fi
	if [ $i == "8" ]; then A8="1"; fi
	if [ $i == "9" ]; then A9="1"; fi
	if [ $i == "10" ]; then A10="1"; fi
done
echo -n " "
print 1 $A1
print 2 $A2
print 3 $A3
print 4 $A4
print 5 $A5
print 6 $A6
print 7 $A7
print 8 $A8
print 9 $A9
print 10 $A0
echo ""
