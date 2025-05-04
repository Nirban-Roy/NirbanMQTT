FROM eclipse-mosquitto

COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY start.sh /start.sh

RUN chmod +x /start.sh

EXPOSE 80
EXPOSE 8080

CMD ["/start.sh"]
