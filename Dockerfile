FROM centos
COPY /usr/local/openjdk-8 jdk8
ADD target/*.jar docker-test.jar
ENV JAVA_HOME=/jdk8
ENV PATH=$JAVA_HOME/bin:$PATH
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","docker-test.jar"]

