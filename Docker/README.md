## Adding the user to docker Group 

- sudo usermod -aG docker ec2-user 
image to container 
## Docker architecture 
 - DockerCLI
 - Docker Daemon
    - cotainers
    - local image registry
 - Docker Hub

 ![](2022-08-08-16-38-57.png)

## Docker commands 
To Get Running  Containers
```
docker ps
```
To Get ALL Running  Containers
```
docker ps -a
```
To pull images
```
docker pull  <image-name>:<image:tage>
```
list Images
```
docker images 
```
Create Container out of image
```
docker create <image-id> 
docker create b692a91e4e15
```
**NOTE :**  `docker create b692a91e4e15` this command will create the container and it was not started 

Start The Container
```
docker start <container-id>
```
To pull, create and start container, you can just run 
```
docker run <image>:tag
```
To Run the container in detached mode
```
docker run -d <image>:tag
```
To Run the container Using the Host Port OR Expose the contaiers to the out side world 
```
docker run -d -p <host-port>:<container-port> Image-name
docker run -d -p 1234:80 httpd:latest 

docker run -d -P httpd:latest (Host will select randam port)
```
How to Loginto Running container
```
docker exex -it <container-id> bash 
```
Without Loginto the container and run the commands inside the container 
```
docker exec <container-id> ls -l
```
To get the full information about Container-id
```
docker inspect
```
## REMOVE THE CONTAINERS & IMAGES
Remove docker containers 
```
docker rm <CID>
docker rm -f <CID>
```

To check the logs of the container
```
docker logs <container-id>
```
How to provide the ENV varibles 

**NOTE :**  This is working when container is running 
```
docker exec <container-id> env
```
How to Run The envinorment varible with container 
```
docker run -d -e MYSQL_ROOT_PASSWORD=admin123 mysql
```
How to check the ENV varible with container 
```
docker exec f4975729a9b4 env
```
How To Mount Volume in host to The container  
```
docker run -d -e MYSQL_ROOT_PASSWORD=admin123 -v <Host-path>:<container-path> Image-Name

docker run -d -e MYSQL_ROOT_PASSWORD=admin123 -v /home/ec2-user/mysql-folder:/var/lib/mysql  mysql:latest

```

7799342113
