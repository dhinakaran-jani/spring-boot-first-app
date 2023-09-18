#FROM centos
#RUN yum -y update
#RUN yum -y remove java
#RUN yum install -y \
#       java-1.8.0-openjdk \
#       java-1.8.0-openjdk-devel

#RUN yum install -y maven
#RUN yum install -y curl
#RUN yum install -y unzip
FROM maven:3.8.6-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package
FROM amazoncorretto:8-alpine
COPY --from=build /home/app/target/spring-boot-first-app-0.0.1-SNAPSHOT.jar spring-boot-first-app-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-first-app-0.0.1-SNAPSHOT.jar"]