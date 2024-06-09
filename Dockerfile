# Use an OpenJDK image as the base
FROM openjdk:17

WORKDIR /app

COPY target/service-registry.jar /app/service-registry.jar

EXPOSE 8761

ENTRYPOINT ["java", "-jar", "/app/service-registry.jar"]
