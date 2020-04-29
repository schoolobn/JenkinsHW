pipeline {
  agent {

    docker {
      image 'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1/jenkinshw'
    }

  }

  stages {

    stage('Run docker') {
      steps {
        sh '''ssh jenkins@'https://hub.docker.com/repository/docker/cofaone/jenkins_hw1 << EOF
	sudo docker pull cofaone:5000/jenkins_hw1/jenkinshw
	cd /etc/shop/docker
	sudo docker-compose up -d
EOF'''
      }
    }
  }
}