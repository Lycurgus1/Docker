# Steps to achieve posts automation

## Dependencies

- This follows on from Node_automation.md and the intial setup.
	- For this follow the README.md

## Steps

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
