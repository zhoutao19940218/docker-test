FROM openjdk:9-b130-jdk
ADD target/*.jar docker-test.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","docker-test.jar"]

