# Automating App and DB (/posts) setup

## Dependencies

- This follows on from the intial setup.
	- For this follow the README.md
- Follow the node app setup steps then the App & DB setup steps

## Node app setup

### Step 1

- Unzip app folder from Shahrukh

### Step 2

- Create dockerfile in app folder

```
# Select base image to build our own customised node-app microservice

FROM node:alpine

# Working directory

WORKDIR /usr/src/app

# Copy depenendencies
# Copies all packages with wild card character

COPY package*.json ./

# Install npm

RUN npm install

# Copies everything from here(app folder) to default location there

COPY . .

# Define port for (default node app)

EXPOSE 3000

# Run app

CMD ["node", "app.js"]
```

### Step 3.

- Build image

```docker build -t max476/node-app-containerised .```

### Step 4.

Run app from image

```
docker images
docker run -d -p 3000:3000 max476/node-app-containerised
```

### Step 5.

Check app has run

```http://localhost:3000/```

## Automating App & DB Setup

### 1. Create needed files (docker-compose & node dockerfile)

- As per docker-compose file in this container
- Within node_app there is a dockerfile that is run as part of docker compose
	- Therefore you need an app folder with a identical dockerfile in it

### 2. Run docker compose file

```docker-compose up```

### 3. Check app is running

- Check the below links

```
localhost:3000
localhost:3000/posts
```

## Seeding posts

- Currently posts are not seeded. This can be done but is not automated

### Step 1. Add the below to your docker compose file

```command: node seeds/seed.js```

- Then run the compose file

```docker-compose up```

### Step 2. After this has run a while cancel the steps

- Comment out the command line added. Then re run the compose file

```docker-compose up```

**This runs a seeded post page**

# Nginx Auto setup

## 1. Create Docker file

- Per docker file 
```
# Dockerfile for nginx to host our own website

# Tell docker which base image we youwld like to use to build our own image

FROM nginx

# Label image to find out who created image

LABEL MAINTAINER=MAX@SPARTAGLOBAL

# Copy the App Folder from out host to our container

COPY app /usr/share/nginx/html

# Expose the port

EXPOSE 80

# Run app with CMD (Shell commmand)
# Command goes step by step

CMD ["nginx", "-g", "daemon off;"]
```

## 2. Build docker

```docker build -t max476/nginx-app:v1 .```

## 3. Push to docker

```docker push max476/nginx-app:v1```
