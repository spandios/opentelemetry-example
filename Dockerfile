FROM openjdk:17-jdk-slim AS builder
WORKDIR application
ARG JAR_FILE=build/libs/*-SNAPSHOT.jar
COPY ${JAR_FILE} application.jar
COPY opentelemetry-javaagent.jar opentelemetry-javaagent.jar
RUN java -Djarmode=layertools -jar application.jar extract

FROM openjdk:17-jdk-slim
WORKDIR application
COPY --from=builder application/dependencies/ ./
COPY --from=builder application/spring-boot-loader/ ./
COPY --from=builder application/snapshot-dependencies/ ./
COPY --from=builder application/application/ ./
COPY --from=builder application/opentelemetry-javaagent.jar ./
ENTRYPOINT ["java", "-javaagent:opentelemetry-javaagent.jar", "org.springframework.boot.loader.JarLauncher"]
