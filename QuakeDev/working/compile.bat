@echo off

cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Copying Files...
copy Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps\corruptrealmfinal.map Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\qbsp.exe corruptrealmfinal

echo --------------VIS---------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\vis.exe corruptrealmfinal

echo -------------LIGHT--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\light.exe corruptrealmfinal

copy corruptrealmfinal.bsp Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy corruptrealmfinal.pts Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy corruptrealmfinal.lit Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
pause
cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev
quakespasm  +map corruptrealmfinal
