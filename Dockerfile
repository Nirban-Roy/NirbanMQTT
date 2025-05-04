FROM eclipse-mosquitto:latest

# Install nginx (Alpine-based Mosquitto image)
RUN apk add --no-cache nginx

# Copy configs
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Expose only the WS port we'll proxy (Mosquitto on 1884 + nginx on 9001)
EXPOSE 1883 1884 9001

# Launch both Mosquitto and nginx
CMD mosquitto -c /mosquitto/config/mosquitto.conf & \
    nginx -g 'daemon off;'
