#!/bin/bash

$HOME/tomcat/bin/shutdown.sh
sleep 10
$HOME/tomcat/bin/shutdown.sh
sleep 10
$HOME/tomcat/bin/startup.sh

