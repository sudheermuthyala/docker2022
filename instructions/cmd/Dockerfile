## Run will execute at the time of image building. To create and run the container you should have CMD 
## How to run nginx in foreground docker
## That command you give should run infinite time to keep the container running  in cmd
FROM almalinux:8
RUN yum update -y 
RUN yum install nginx -y 
CMD [“nginx”, “-g”, “daemon off;”]