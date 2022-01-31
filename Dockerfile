FROM quay.testing.io:8080/nafasat_ahmed/openjdk:11
VOLUME /tmp
WORKDIR /tmp/
ARG JAR_FILE_NAME
COPY ./$JAR_FILE_NAME $JAR_FILE_NAME
ENTRYPOINT ["java","-jar","$JAR_FILE_NAME"]
