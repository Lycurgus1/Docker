# Docker Theory

## What is Docker

- Open source platform for containerisation
- Light weight compares to VMs
	- Docker shares the memory of OS rather than creating entire virutal env
- Enables you to seperate your infastructe so you can deliver software quickly
	- Enables fast conistent dlivery of your application
- Written in Go

![Docker_diagram](/images/Docker_diagram.PNG)

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
	- Docker therefore quicker. Means that more images can run.
	- Doesnt install whole OS of VMs, shares physical resources for containers

- Less computing power needed, uptime decreased
- More environments/images can be run
- Less waiting so developers can spend more time developing

![Docker_vs_VMs](/images/Docker_vs_VMs.PNG)

## Containerisation

- Packing up software and dependencies so it can run independently
- Allows develops to create and deploy applications faster and more securely
	- Pre containerisation code developed in specific environment, so bugs when going to linux to windows OS

- Allows applications to written once and run anywhere - portability.
	- Impacts development process and vendor compatability

### Containerisation benefits

- Portability - Container creates executable software package
- Agility - Enables DevOps and agile tools as docker engine enforces industry standard
- Speed - Lightweight (See docker notes)
- Fault isolation - Isolated containers are independent so errors dont affect others and and can isolate faults
- Efficiency - software running in containers shares machines OS and app layers shared across containers
- Ease of management - container orchestation tools available
- Security - applications isolated

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
