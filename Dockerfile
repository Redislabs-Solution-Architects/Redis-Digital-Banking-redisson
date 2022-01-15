FROM maven:3.8.4-openjdk-8 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package

FROM openjdk:8
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y gettext
COPY --from=build /usr/src/app/target/redis-0.0.1-SNAPSHOT.jar /usr/app/redis-0.0.1-SNAPSHOT.jar
COPY --from=build /usr/src/app/src/main/resources/runApplication.sh /usr/app/runApplication.sh
COPY --from=build /usr/src/app/src/main/resources/redisson-replica.yaml /etc
EXPOSE 8080
ENTRYPOINT ["/usr/app/runApplication.sh"]
