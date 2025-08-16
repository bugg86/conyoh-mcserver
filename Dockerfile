FROM --platform=linux/amd64 eclipse-temurin:17.0.16_8-jre

EXPOSE 25565
EXPOSE 24454/udp

RUN mkdir /server

WORKDIR /server

COPY ./server ./

ENTRYPOINT bash start.sh