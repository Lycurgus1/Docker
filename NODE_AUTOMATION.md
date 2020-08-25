# Creating own microservice

Step 1

- Unzip app folder from Shahrukh

Step 2

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

Step 3.

Build image

```docker build -t max476/node-app-containerised .```

Step 4.

Run app from image

```
docker images
docker run -d -p 3000:3000 max476/node-app-containerised
```

Step 5.

Check app has run

```http://localhost:3000/```
