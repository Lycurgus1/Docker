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

# Copy only essental things

COPY --from=app /usr/src/app /usr/src/app

# Define the working directory inside the container for second stage

WORKDIR /usr/src/app

# Define port for (default node app)

EXPOSE 3000

# Run app

CMD ["node", "app.js"]