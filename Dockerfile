FROM openjdk:8-jre-alpine

RUN mkdir -p /app/bin

COPY sample-java-project-1.0.jar /app/bin

WORKDIR /app/bin

ENTRYPOINT ["java", "-Done-jar.silent=true","-Xms512m", "-Xmx768m" , "-jar", "sample-java-project-1.0.jar"]