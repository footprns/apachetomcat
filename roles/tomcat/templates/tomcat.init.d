#!/bin/bash
# description: Tomcat Start Stop Restart Status
# processname: tomcat
# chkconfig: 234 20 80

JAVA_HOME=/usr/bin/java
export JAVA_HOME
PATH=$JAVA_HOME/bin:$PATH
export PATH
CATALINA_HOME=/opt/tomcat/tomcat
export CATALINA_HOME
SERVICE_ACCOUNT=tomcat
export SERVICE_ACCOUNT

case $1 in
start)
#sh $CATALINA_HOME/bin/startup.sh
sudo su - $SERVICE_ACCOUNT -c "$CATALINA_HOME/bin/startup.sh"
;;
stop)
#sh $CATALINA_HOME/bin/shutdown.sh
sudo su - $SERVICE_ACCOUNT -c "$CATALINA_HOME/bin/shutdown.sh"
;;
restart)
#sh $CATALINA_HOME/bin/shutdown.sh
sudo su - $SERVICE_ACCOUNT -c "$CATALINA_HOME/bin/shutdown.sh"
#sh $CATALINA_HOME/bin/startup.sh
sudo su - $SERVICE_ACCOUNT -c "$CATALINA_HOME/bin/startup.sh"
;;
status)
ps -ef | grep tomcat
esac
exit 0

#https://www.openprogrammer.info/2015/06/14/how-to-install-java-8-and-tomcat-8-on-centos-6-as-service/
#Add tomcat to start up
#chmod 755 tomcat
#chkconfig --add tomcat
#chkconfig --level 234 tomcat on
#chkconfig --list tomcat
