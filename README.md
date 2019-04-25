# DevOps Training Example : Bhutan

This is a Docker example running Nginx, PHP, Composer and MySQL.

## Notes

We will be creading 3 container on a Docker server as bellow:

1. Container I - example.app1 PHP application

2. Container II - example.app2 PHP application

3. Container III - MySOL db server

Our Application 1 and 2 will connect to db server and will fetch the data.

## Steps for Deployments

Step 1.
Install Docker and utils

```sh
# install docker
$ yum install docker

# install utils
$ sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

# add docker repo
$ sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

```

Step 2.
Start Docker services
```sh
$ sudo systemctl enable docker.service

$ sudo systemctl start docker.service
```

Step 3.
Install Docker CE 

```sh
$ sudo yum install docker-ce
```

Step 4.
Install Docker-Compose

```sh
# Install Extra Packages for Enterprise Linux
$ sudo yum install epel-release

#  Install python-pip
$ sudo yum install -y python-pip

# Then install Docker Compose:
$ sudo pip install docker-compose

# check version 
$ docker-compose version
```

Step 5. 
Install Git Client - for Cloning a local or remote Git repository. 

```sh
$ sudo yum install git
```

Step 6.
Create a Directory anywhere on your machine to keep the Clone Directory  
```sh
# In this example, we will make a 'DevOps' directory inside root directory.
$ sudo mkdir -p /root/DevOps

# Go to newly created directory to do cloning of repositories.
$ cd /root/DevOps
```
Step 7.
Clone Git Repository 

Our example : [docker-mysql-php-example](https://github.com/kapilsthakkar25/docker-mysql-php-example)
```sh
# You clone using ssh or http 
# We will clone using http as it is a public repository.
$ sudo git clone https://github.com/kapilsthakkar25/docker-mysql-php-example.git

# check cloned repo directory (our dir - docker-mysql-php-example)
$ ls -l

# Go to docker-mysql-php-example.git
$ cd docker-mysql-php-example
```

Step 8.
Deploy Docker Containers
```sh
# deploy containers
$ sudo docker-compose up -d

# check whether containers are deployed successfully or not, and it is running on which port
$ docker ps

# run the following command to create database schema and tables
$ docker-compose exec db sh /tmp/mysql/run.sh
```

Step 8.
Open web browser and test using your docker host ip

eg: x.x.x.x/app1/

eg: x.x.x.x/app2/


That's it. Thank you.
