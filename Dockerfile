FROM oznu/homebridge:latest

EXPOSE 8581

ENV HOMEBRIDGE_CONFIG_UI_PORT=8581

CMD ["homebridge", "-I", "-U", "/homebridge", "-C", "-D", "--port", "8581", "--host", "0.0.0.0"]
