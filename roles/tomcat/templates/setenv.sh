JAVA_HOME={{user_home_dir}}/java
#CATALINA_OPTS="-Dcom.sun.management.jmxremote  -Dcom.sun.management.jmxremote.port={{item.jmx_port}} -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
export JAVA_OPTS="-Dcom.sun.management.jmxremote \
-Dcom.sun.management.jmxremote.port={{item.jmx_port}} \
-Dcom.sun.management.jmxremote.rmi.port={{item.jmx_port}} \
-Djava.rmi.server.hostname=127.0.0.1 \
-Dcom.sun.management.jmxremote.ssl=true \
-Dcom.sun.management.jmxremote.authenticate=true \
-Dcom.sun.management.jmxremote.password.file=$CATALINA_HOME/conf/jmxremote.password \
-Dcom.sun.management.jmxremote.access.file=$CATALINA_HOME/conf/jmxremote.access"
