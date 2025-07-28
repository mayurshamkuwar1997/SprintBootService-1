FROM openjdk:17
MAINTAINER mayur
WORKDIR /app
COPY *.jar /app
EXPOSE 8080
ENTRYPOINT sh -c 'java -jar /app/*.jar'
