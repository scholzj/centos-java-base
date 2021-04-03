#!/bin/sh
set -x
JAR=$1
shift

. /bin/dynamic_resources.sh

# Make sure that we use /dev/urandom
JAVA_OPTS="${JAVA_OPTS} -Dvertx.cacheDirBase=/tmp -Djava.security.egd=file:/dev/./urandom"

# Enable GC logging for memory tracking
#JAVA_OPTS="${JAVA_OPTS} -XX:NativeMemoryTracking=summary -verbose:gc -XX:+PrintGCDetails -XX:+PrintGCDateStamps"

exec java $JAVA_OPTS -jar $JAR $JAVA_OPTS $@
