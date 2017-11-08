#!/bin/sh

if [ "$JAVA_HOME" == "" ]; then
  echo "JAVA_HOME not set"
  exit 1
fi

UPM_HOME=`dirname "$0"`

CP=`echo $UPM_HOME/*.jar | tr ' ' ':'`
$JAVA_HOME/bin/java -cp $CP -jar $UPM_HOME/upm*.jar
