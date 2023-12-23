FROM adoptopenjdk/openjdk8:alpine-jre
LABEL maintainer="ДмитриенкоВВ <vddjack2008@yandex.ru>"
LABEL name="todos-api"
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#COPY target/todos-api-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
