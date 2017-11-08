#!/bin/sh

UPM_HOME=/home/peter/dev/upm-swing/dist
JDK=/home/peter/apps/jdk1.8.0_144/bin

CP=`echo $UPM_HOME/*.jar | tr ' ' ':'`
$JDK/java -cp $CP -jar $UPM_HOME/upm*.jar
