#!/bin/bash

if [ "$JAVA_HOME" == "" ]; then
  JAVA_HOME=/home/peter/apps/jdk1.8.0_144
fi

UPM_HOME=`dirname "$0"`

CP=`echo $UPM_HOME/*.jar | tr ' ' ':'`
$JAVA_HOME/bin/java -cp $CP -jar $UPM_HOME/upm*.jar
