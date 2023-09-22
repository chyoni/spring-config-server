FROM openjdk:20-ea-1-slim
VOLUME /tmp
COPY /apiEncryptionKey.jks apiEncryptionKey.jks
COPY target/config-service-0.0.1.jar ConfigServer.jar
ENTRYPOINT ["java", "-jar", "ConfigServer.jar"]