# Dockerfile for nginx to host our own website

# Tell docker which base image we youwld like to use to build our own image

FROM nginx

# Label image to find out who created image

LABEL MAINTAINER=MAX@SPARTAGLOBAL

# Copy the App1 Folder from out host to our container

COPY app1 /usr/share/nginx/html

# Expose the port

EXPOSE 80

# Run app with CMD (Shell commmand)
# Command goes step by step

CMD ["nginx", "-g", "daemon off;"]