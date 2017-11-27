# Apps Version Switcher
-------------
Shell Script to Easy Change version of your Linux Apps (Currently Java and Scala-lang)

#### How to 
- Download all package you want to serve on your PC
- Just changer DIR variable on ```switcher.sh```
```
switcher.sh
-----------
EDIT THIS
SCALA_DIR="/path/to/scalasdir"
SCALA_1="$SCALA_DIR/path/to/scalaversion/bin"
SCALA_2="$SCALA_DIR/path/to/scalaversion/bin"
SCALA_3="$SCALA_DIR/path/to/scalaversion/bin"

JAVA_7="path/to/java7/bin"
JAVA_8="path/to/java8/bin"
```
- Run it 
```
$ sudo /bin/bash /path/to/switcher.sh

# Interactive shell will guide you
