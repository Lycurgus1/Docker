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
