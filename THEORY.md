# Docker Theory

## What is Docker

- Open source platform for containerisation
- Light weight compares to VMs
	- Docker shares the memory of OS rather than creating entire virutal env
- Enables you to seperate your infastructe so you can deliver software quickly
	- Enables fast conistent dlivery of your application
- Written in Go

## Adoption of Docker

- 20% Companies used in in 2017, 50% in 2020
	- Powered by trend setters (facebook, paypal etc.)

- Most trending containerisation technology in tech world. 
	- Best containerisation platform
	- Designed to make it easier to create, deploy, and run applications
	- Easy to configure

## Using Docker vs Virtual machines

- Light weight and allows moore efficient containerisation platforming

- As per diagram you have to go through less layers before getting to OS
	- Docker therefore quicker
- Doesnt install whole OS of VMs, shares physical resources for containers

![DockervsVMs](images/Docker_vs_VMs)

## Containerisation



## Notes from Webinar

**Kubernetes**

- Lots of new job roles
- Developed by google
	- Now open source
- Self healing
- Auto scaling and load balancing
- Can set autoscaling
	- Maximum and minmum pod number set

**Adopting micro services**

- start small, use iterations
- use docker/kubernetes to test and self heal

**Docker and Kuberntes**

- Docker creates containers
- Kubernetes manages them
- Togethor are transformation enablers and tools


## Docker Commands

```docker ps```

- Checks container running
- ```-a``` Shows all containers running

```docker pull```

- Gets image from docker hub

```docker run```

- Runs from docker hub
- With -p e.g. below will run from local container

```docker rm 34e90b4095ba -f```

- Removes container

**For more commands see setup in README**
