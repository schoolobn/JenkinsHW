FROM openjdk:8u151-stretch

# Install pacakges
RUN apt-get update

# Install maven
RUN apt-get install -y maven
 
#Install git
RUN apt-get install -y git

# Install docker 18.03
RUN apt-get -y docker.io

ADD /Dockerfile ADD files/Dockerfile /home/user/