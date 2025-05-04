FROM eclipse-mosquitto:latest

# Replace default config
COPY mosquitto.conf /mosquitto/config/mosquitto.conf

# (Optional) tell Docker which ports the container listens on
EXPOSE 1883 9001
