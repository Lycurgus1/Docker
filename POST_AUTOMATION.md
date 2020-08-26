# Steps to achieve posts automation

## Dependencies

- This follows on from Node_automation.md and the intial setup.
	- For this follow the README.md

## Steps

### 1. Create docker compose file

- As per docker compose file in this container

### 2. Run docker compose file

```docker-compose up```

## Seeding posts

- Currently posts are not seeded. This can be done but is not automated

### Step 1. Add the below to your docker compose file

```command: node seeds/seed.js```

- Then run the compose file

```docker-compose up```

### Step 2. After this has run a while cancel the steps

- Comment out the command line added. Then re run the compose file

```docker-compose up```

### This runs a seeded post page
