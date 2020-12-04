@echo off

cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Copying Files...
copy Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps\corruptrealmoriginal.map Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\qbsp.exe corruptrealmoriginal

echo --------------VIS---------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\vis.exe corruptrealmoriginal

echo -------------LIGHT--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\light.exe corruptrealmoriginal

copy corruptrealmoriginal.bsp Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy corruptrealmoriginal.pts Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy corruptrealmoriginal.lit Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
pause
cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev
quakespasm  +map corruptrealmoriginal
