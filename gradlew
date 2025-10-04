#!/bin/sh
DEFAULT_JVM_OPTS='"-Xmx64m" "-Xms64m"'
APP_BASE_NAME=$(basename "$0")
CLASSPATH=gradle/wrapper/gradle-wrapper.jar
if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi
exec "$JAVACMD" $DEFAULT_JVM_OPTS $JAVA_OPTS -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
