@echo off

echo [OK] Writing the sources.txt file
dir .\src\*.java /s/a:-d/b > sources.txt

echo [OK] Clearing the build folder
rd /s /q build
mkdir build

echo [OK] Compiling the Java project
javac -d build @sources.txt

echo [OK] Writing the runner.cmd file
echo @echo off > .\build\runner.cmd
echo java -cp . consoletest.ConsoleTest >> .\build\runner.cmd
