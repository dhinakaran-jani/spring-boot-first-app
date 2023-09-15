FROM amazoncorretto:11-alpine
COPY ./target/*.jar spring-boot-first-app-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/spring-boot-first-app-0.0.1-SNAPSHOT.jar"]