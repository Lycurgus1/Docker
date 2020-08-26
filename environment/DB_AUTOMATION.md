# Steps to achieve posts automation

## Docker Task

1. Create image for mongodb DONE
2. Connect to Node app DONE
3. Create a volume to make data persistent ?????
4. Docker compose to connect two containers to launch full app DONE
5. localhost:3000/fibonacci.7 ensure it works with localhost:3000/posts/
6. DB working with on node-app image

## Steps

### Step 1. Create Dockerfile in environment folder

```
# Dockerfile for hosting mongodb

# Tell docker which base image to use

FROM mongo

# Label image to find out who created image

LABEL MAINTAINER=MAX@SPARTAGLOBAL

# Copy the Environment DB Folder from out host to our container

COPY db /etc

# Expose the port

EXPOSE 27017

# Run db with CMD (Shell commmand)
# Command goes step by step

# RUN systemctl restart mongoDB
# RUN systemctl enable mongoDB
```

### Step 2. Run docker file and create images

```docker build -t max476/mongod-app-containerised-v2 .```

### Step 3. Run image and create container

```
docker images
docker run -d -p 27017:27017 max476/mongod-app-containerised-v3:latest
```

### Step 4. Check mongo running

```
docker ps
docker stop 14c2fc7c5aa0
docker start 14c2fc7c5aa0
alias docker="winpty docker"
docker exec -it fe4785a7cea1 sh
mongo --version
```
### Step 5. Create and run docker compose

```docker-compose up```

## Useful links

- https://itnext.io/dockerize-a-node-js-app-connected-to-mongodb-64fdeca94797
