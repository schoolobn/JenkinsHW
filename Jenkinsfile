pipeline {
  agent {

    docker {
      image 'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1'
    }
  }
 stages{   
      stage('Run docker on host') {
      steps {
        sh 'ssh-keyscan -H https://hub.docker.com/repository/docker/cofaone >> ~/.ssh/known_hosts'
        sh 'ssh jenkins@cofaone << EOF'
	sudo docker pull https://hub.docker.com/repository/docker/cofaone/jenkins_hw1
	cd /etc/JenkinsHW/docker
	sudo docker-compose up -
      }  
     }
   }
}