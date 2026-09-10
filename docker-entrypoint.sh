#!/bin/sh
# Render injects the real port via $PORT; Tomcat must listen on it.
sed -i "s/port=\"8080\"/port=\"${PORT:-8080}\"/" /usr/local/tomcat/conf/server.xml
exec catalina.sh run
