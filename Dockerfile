FROM openjdk:11-jre-slim

VOLUME /tmp

EXPOSE 8080

# Add the application's jar to the container
COPY /target/weather-*.jar app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]