FROM openjdk:17
WORKDIR /app
COPY *.jar /app/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]
