@echo off

cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Copying Files...
copy Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps\testlevel.map Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\qbsp.exe testlevel

echo --------------VIS---------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\vis.exe testlevel

echo -------------LIGHT--------------
Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\tools\ericw-tools\bin\light.exe testlevel

copy testlevel.bsp Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy testlevel.pts Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
copy testlevel.lit Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev\id1\maps
pause
cd\
cd Q:\Workspace\GitHub\corrupt-realm-project\QuakeDev
quakespasm  +map testlevel
