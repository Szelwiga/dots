#!/bin/bash
echo -n "App: "
A=$(hyprctl activewindow | grep title)
hyprctl activewindow | grep "Invalid" > /dev/null
if [ "$?" == "0" ]; then
	echo ""
	exit 0
fi
echo $A | grep "Chrome$" > /dev/null
if [ "$?" == "0" ]; then
	echo ""
	exit 0
fi
echo $A | grep "nano" > /dev/null
if [ "$?" == "0" ]; then
	echo ""
	exit 0
fi
hyprctl activewindow | grep "class" | grep "kitty" > /dev/null
if [ "$?" == "0" ]; then
	echo ""
	exit 0
fi
echo ""
exit 0
