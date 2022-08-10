#!/bin/sh
#
HOME=/home/pacs/{{pac}}/users/{{user}}
CATALINA_HOME=/usr/share/tomcat9
CATALINA_PID=$HOME/tomcat/work/catalina.pid
JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
PATH=$JAVA_HOME/bin:$PATH
# Default Java options
if [ -z "$JAVA_OPTS" ]; then
	JAVA_OPTS="-Djava.awt.headless=true"
fi

# allow slashes in page names, that have been imported from confluence
# see https://jira.xwiki.org/browse/CONFLUENCE-61
# see https://www.xwiki.org/xwiki/bin/view/Documentation/AdminGuide/Installation/InstallationWAR/InstallationTomcat/#HAllowing222F22and225C22inpagenames
# CATALINA_OPTS=-Dorg.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH=true -Dorg.apache.catalina.connector.CoyoteAdapter.ALLOW_BACKSLASH=true