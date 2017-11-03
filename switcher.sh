#!/bin/sh
# Selecting Version of scala
SCALA_DIR="/home/ansvia07/axscala/sdk"
SCALA_1="$SCALA_DIR/scala-2.9.1.final/bin"
SCALA_2="$SCALA_DIR/scala-2.10.6/bin"
SCALA_3="$SCALA_DIR/scala-2.12.3/bin"

JAVA_7="/usr/java/jdk1.7.0_80/bin/"
JAVA_8="/usr/java/jdk1.8.0_144/bin/"

#echo Select your scala version:
#echo 1. $SCALA_1
#echo 2. $SCALA_2
#echo 3. $SCALA_3
echo " "
echo "---------- Ax Scala-Java Version Changer -------------"
echo "Select your Java version (1 / 2) ..."

echo 1. Java 1.7
echo 2. Java 1.8
echo 3. Scala-2.9.1.final
echo 4. Scala-2.10.6
echo 5. Scala-2.12.3
echo "h. For help"
echo c. Current Java-Scala Version
echo q. Type q to quit

while :
do
  echo " "
  echo "Your choice: (h for help, q for quit)"
  read JAVA_SELECTION
  case $JAVA_SELECTION in
    1)
      echo "--------------- Java Updated!  ----------------"
      eval "ln -f -s $JAVA_7//java /usr/bin"
      java -version
      echo
      echo "javac -version"
      eval "ln -f -s $JAVA_7//javac /usr/bin"
      javac -version
      echo
      echo "javap -version"
      eval "ln -f -s $JAVA_7//javap /usr/bin"
      javap -version
      echo "--------------- Done!  ----------------"
      ;;
    2)
      echo "--------------- Java Updated!  ----------------"
      eval "ln -f -s $JAVA_8//java /usr/bin"
      java -version
      echo
      echo "javac -version"
      eval "ln -f -s $JAVA_8//javac /usr/bin"
      javac -version
      echo
      echo "javap -version"
      eval "ln -f -s $JAVA_8//javap /usr/bin"
      javap -version
      echo "--------------- Done!  ----------------"
      ;;

    3)
      echo "--------------- Scala Updated!  ----------------"
      eval "ln -f -s $SCALA_1/scala /usr/bin"
      scala -version
      echo "--------------- Done!  ----------------"
      ;;
    4)
      echo "--------------- Scala Updated!  ----------------"
      eval "ln -f -s $SCALA_2/scala /usr/bin"
      scala -version
      echo "--------------- Done!  ----------------"
      ;;
    5)
      echo "--------------- Scala Updated!  ----------------"
      eval "ln -f -s $SCALA_3/scala /usr/bin"
      scala -version
      echo "--------------- Done!  ----------------"
      ;;

    c)
      java -version
      echo "javac -version"
      javac -version
      echo "javap -version"
      javap -version
      echo "scala -version"
      scala -version
      break
      ;;
    q)
      echo "Done ! Thanks"
      break
      ;;
    h)
      echo " "
      echo "---------- Ax Scala-Java Version Changer -------------"
      echo "Select your Java version (1 / 2) ..."

      echo 1. Java 1.7
      echo 2. Java 1.8
      echo 3. $SCALA_1
      echo 4. $SCALA_2
      echo 5. $SCALA_3
      echo "h. For help"
      echo q. Type q to quit
      ;;
    *)
      echo "No choice selected"
      ;;
  esac
done
