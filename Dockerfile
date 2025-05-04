FROM eclipse-mosquitto:latest

# Copy in your (properly formatted) Mosquitto config
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# Expose both the raw MQTT port and the WebSockets port
EXPOSE 1883 9001
