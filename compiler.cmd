dir .\src\*.java /s/a:-d/b > sources.txt
rd /s /q build
mkdir build
javac -d build @sources.txt
