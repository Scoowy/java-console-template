@echo off

dir .\src\*.java /s/a:-d/b > sources.txt
echo [OK] Write sources.txt

rd /s /q build
mkdir build
echo [OK] Clean build folder

javac -d build @sources.txt
echo [OK] Copile project

type nul > file.txt
echo "Texto a poner ahi" > .\build\runner.cmd

echo [OK] Write runner.cmd