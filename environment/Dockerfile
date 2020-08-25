# Dockerfile for hosting mongodb

# Tell docker which base image to use

FROM mongo

# Label image to find out who created image

LABEL MAINTAINER=MAX@SPARTAGLOBAL

# Copy the Environment DB Folder from out host to our container

COPY ~/Docker/environment/db /etc

# Expose the port

EXPOSE 27017