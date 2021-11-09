@echo off

if {%1}=={} goto :EXITING

:COMPILING
echo [OK] Writing the sources.txt file
dir .\src\*.java /s/a:-d/b > sources.txt

echo [OK] Clearing the build folder
rd /s /q build
mkdir build

echo [OK] Compiling the Java project
javac -d build @sources.txt

echo [OK] Writing the runner.cmd file
echo @echo off > .\build\runner.cmd
echo java -cp . %1 >> .\build\runner.cmd

echo [OK] Successful compilation

goto :eof

:EXITING
echo [ERROR] The MainClass parameter is invalid or empty.
echo [ERROR] Bad compilation

goto :eof
