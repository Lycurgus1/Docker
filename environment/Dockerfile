# Dockerfile for hosting mongodb

# Tell docker which base image to use

From mongo

# Label image to find out who created image

LABEL MAINTAINER=MAX@SPARTAGLOBAL

# Copy the Environment DB Folder from out host to our container

COPY db /etc

# Expose the port

EXPOSE 27017

# Run db with CMD (Shell commmand)
# Command goes step by step

CMD ["systemctl restart mongod", "systemctl enable mongod"]