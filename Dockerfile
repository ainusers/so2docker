FROM java:8-alpine

ADD pid.jar app.jar

COPY libpid.so /usr/lib/

CMD ldconfig

ENTRYPOINT ["java","-jar","/app.jar"]
