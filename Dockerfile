FROM centos:7

RUN yum -y install java-11-openjdk-headless openssl && yum -y clean all

# Set JAVA_HOME env var
ENV JAVA_HOME /usr/lib/jvm/java

# Copy scripts for starting Java apps
COPY scripts/* /bin/