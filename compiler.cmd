dir src /s/b/a:-d *.java > sources.txt
rm -r build/*
javac -d build @sources.txt
