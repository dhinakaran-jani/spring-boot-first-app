FROM amazoncorretto:8-alpine
#FROM centos
#RUN yum -y update
#RUN yum -y remove java
#RUN yum install -y \
#       java-1.8.0-openjdk \
#       java-1.8.0-openjdk-devel

#RUN yum install -y maven
#RUN yum install -y curl
#RUN yum install -y unzip
COPY ./target/*.jar spring-boot-first-app-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-first-app-0.0.1-SNAPSHOT.jar"]