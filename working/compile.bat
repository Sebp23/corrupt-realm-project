@echo off

cd\
cd E:\QuakeDev\working


echo Copying Files...
copy E:\QuakeDev\id1\maps\miniaturetribblesmap.map E:\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
E:\QuakeDev\tools\ericw-tools\bin\qbsp.exe miniaturetribblesmap

echo --------------VIS---------------
E:\QuakeDev\tools\ericw-tools\bin\vis.exe miniaturetribblesmap

echo -------------LIGHT--------------
E:\QuakeDev\tools\ericw-tools\bin\light.exe miniaturetribblesmap

copy miniaturetribblesmap.bsp E:\QuakeDev\id1\maps
copy miniaturetribblesmap.pts E:\QuakeDev\id1\maps
copy miniaturetribblesmap.lit E:\QuakeDev\id1\maps
pause
cd\
cd E:\QuakeDev
quakespasm  +map miniaturetribblesmap
