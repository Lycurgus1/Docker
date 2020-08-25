# Docker Repositry

- For Theory see Theory.md
- For setup see below

## Dependencies

- Git bash
- Docker installed(see below for Docker Installation steps)

## Docker Intro Steps

### Step 1
- Check Docker Installed

```
docker --version
```
- May need to up it

```
docker up
```

### Step 2
- Work with image

```
docker pull nginx # This pulls the image from docker hub
docker images # Will show images downloaded. Should show nginx
docker run ahskhan/nginx-test-rp-app
```

### Step 3 

- Run docker image

```docker run -p 80:80 ahskhan/nginx-test-rp-app:v2```

- In browser the below should show nginx home page
- 80:80 is port mapping. Mapping to Nginx local host

```localhost```

### Step 4

- Remove container. Based on docker id (the misc string). -f to force.

```
docker rm 34e90b4095ba -f
docker ps confirms
```

### Step 5

- Run server in seperate app. "-d" Illustrates this

```
docker run -d -p 80:80 ahskhan/nginx-test-rp-app:v2
```

### Step 6

- Enter container

```
alias docker="winpty docker"
docker exec -it 090eeef9fee3 sh
```
- You are now inside nginx container. Has linux container
- Type ```exit``` to exit

### Step 7

- Create docker hub
- First create an account at
```https://hub.docker.com/```

### Step 8

- Push to docker hub

```
docker login -u max476
docker tag 4bb46517cac3 max476/max-docker-first
docker push max476/max-docker-first:firstcommit
```

## Docker Installation 

- If getting the below error see possible troublshooting steps below

![Error](images/HyperVError.PNG)

- Make sure Hyper V Enabled
	- Done via turn windows features on/off
	- May be neccessary to disable, restart then enable again
- Uninstall and reinstall Docker
- Go into BIOS and make sure virtulisation is enabled

### Good links

```
https://forums.docker.com/t/hyper-v-feature-components-missing/89494/19
https://github.com/docker/for-win/issues/4470
```
