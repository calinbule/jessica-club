FROM nginx:alpine

# Copy all web content to nginx html directory
COPY . /usr/share/nginx/html

# Remove Dockerfile and docker-compose from the served content
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/docker-compose.yml

EXPOSE 80