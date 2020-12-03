@echo off

cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Copying Files...
copy Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps\corruptrealm.map Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\qbsp.exe corruptrealm

echo --------------VIS---------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\vis.exe corruptrealm

echo -------------LIGHT--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\light.exe corruptrealm

copy corruptrealm.bsp Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy corruptrealm.pts Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy corruptrealm.lit Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
pause
cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev
quakespasm  +map corruptrealm
