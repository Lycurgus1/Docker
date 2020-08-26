# Creating a multi stage build

## Dependencies

- Git Bash


## Steps

### Step 1. Create dockerfile in node app folder

```
# Use the base image

FROM node

# Define the working directory inside the container

WORKDIR /usr/src/app

# Copy the dependencies

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

### Step 2. Build base on that dockerfile

```docker build -t max476/node-app-dev:v1 .```

- Confirm image creation

```docker images```

### Step 3. Edit docker file for multi stage build

```
# Use the base image

FROM node AS app

# Define the working directory inside the container

WORKDIR /usr/src/app

# Copy the dependencies

COPY package*.json ./

# Install npm

RUN npm install

# Copies everything from here(app folder) to default location there

COPY . .

# Second stage of our build for production - multi stage build

FROM node:alpine

# Copy only essental things. Only brings items from last stage/cache
# --from=app refers to FROM node AS app statement above

COPY --from=app /usr/src/app /usr/src/app

# Define the working directory inside the container for second stage

WORKDIR /usr/src/app

# Define port for (default node app)

EXPOSE 3000

# Run app

CMD ["node", "app.js"]
```

### Step 4. Build production build

```docker build -t max476/node-app-prod:v1 .```

- Docker images to confirm creation

```docker images```

- Production environment image is 144 mb compared to 1.01 GB
	- Much smaller build