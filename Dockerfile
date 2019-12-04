FROM openjdk:8-jre-alpine
EXPOSE 8081
ARG JAR_FILE=target/api-gateway.jar
ADD ${JAR_FILE} api-gateway.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/api-gateway.jar"]