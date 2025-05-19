# the base image
FROM nginx:latest

# making directory for the image
WORKDIR /app

# copying the index.html to nginx file
COPY /index.html /usr/share/nginx/html/index.html

#copying the file
COPY . .

# port
EXPOSE 80

# running command
CMD ["nginx", "-g", "daemon off;"]