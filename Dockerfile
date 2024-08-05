FROM ubuntu:22.04
ARG DEBIAN_FRONTEND=noninteractive
LABEL org.opencontainers.image.source https://github.com/iam-green/zomboid-server
ENV UID=1000 \
  GID=1000 \
  DATA_DIRECTORY=/data \
  STEAM_DIRECTORY=/steam \
  ZOMBOID_DIRECTORY=/zomboid \
  RAM=8192M \
  TZ=Asia/Seoul \
  SERVER_NAME=pzserver \
  ADMIN_USERNAME=admin \
  ADMIN_PASSWORD=changeme
RUN apt-get update -y && \
  apt-get install -y lib32gcc-s1 curl sudo jq && \
  mkdir -p /tmp
WORKDIR /tmp
COPY server .
RUN chmod +x server
EXPOSE 8766/udp 8767/udp 16261/udp 16262/udp
CMD ./server -r $RAM -n $SERVER_NAME \
  --user $ADMIN_USERNAME --pass $ADMIN_PASSWORD \
  -d $DATA_DIRECTORY -sd $STEAM_DIRECTORY -zd $ZOMBOID_DIRECTORY