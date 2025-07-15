FROM node:20

RUN apt-get update && apt-get install -y libavahi-compat-libdnssd-dev && \
    npm install -g --unsafe-perm homebridge homebridge-config-ui-x

RUN mkdir -p /homebridge
WORKDIR /homebridge

ENV HOMEBRIDGE_CONFIG_UI_PORT=8581

EXPOSE 8581

CMD ["homebridge", "-I", "-U", "/homebridge", "-C", "-D"]
