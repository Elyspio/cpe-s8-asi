FROM openjdk:15-jdk-alpine as builder
WORKDIR /workspace/app

COPY gradle gradle
COPY build.gradle settings.gradle gradlew ./

COPY src src
RUN ./gradlew build -x test

RUN mv build/libs/*.war ./build/libs/app.war

FROM tomcat:9.0-jdk15

COPY --from=builder /workspace/app/build/libs/app.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
