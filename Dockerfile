FROM openjdk:8u151-stretch

# Install pacakges
RUN apt-get update

# Install maven
RUN apt-get install -y maven
 
#Install git
RUN apt-get install -y git

#Clone boxfuse
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello myapp

#Package war file
WORKDIR myapp
RUN mvn package

# Install docker 18.03
RUN apt-get -y install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get -y install docker-ce=18.03.1~ce-0~debian

# Clear cache
RUN apt-get clean
