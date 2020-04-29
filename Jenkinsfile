pipeline {
  agent {

    docker {
      image 'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1'
    }

  }
      stage('Run docker on host') {
      steps {
        sh 'ssh-keyscan -H cofaone >> ~/.ssh/known_hosts'
        sh '''ssh jenkins@cofaone << EOF
	sudo docker pull https://hub.docker.com/repository/docker/cofaone/jenkins_hw1
	cd /etc/JenkinsHW/docker
	sudo docker-compose up -d
      }
    }
  }
}